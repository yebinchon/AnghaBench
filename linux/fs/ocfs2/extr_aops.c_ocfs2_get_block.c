
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {int dummy; } ;
struct inode {scalar_t__ i_blkbits; int i_sb; int i_mode; int i_ino; } ;
struct buffer_head {scalar_t__ b_size; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int ip_flags; scalar_t__ ip_blkno; int ip_clusters; } ;


 int EIO ;
 int ML_ERROR ;
 int ML_NOTICE ;
 unsigned int OCFS2_EXT_UNWRITTEN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SYSTEM_FILE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int dump_stack () ;
 scalar_t__ i_size_read (struct inode*) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int mlog (int ,char*,...) ;
 scalar_t__ ocfs2_blocks_for_bytes (int ,scalar_t__) ;
 int ocfs2_extent_map_get_blocks (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ;
 scalar_t__ ocfs2_sparse_alloc (struct ocfs2_super*) ;
 int ocfs2_symlink_get_block (struct inode*,scalar_t__,struct buffer_head*,int) ;
 int set_buffer_new (struct buffer_head*) ;
 int trace_ocfs2_get_block (unsigned long long,unsigned long long,struct buffer_head*,int) ;
 int trace_ocfs2_get_block_end (unsigned long long,unsigned long long) ;

int ocfs2_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh_result, int create)
{
 int err = 0;
 unsigned int ext_flags;
 u64 max_blocks = bh_result->b_size >> inode->i_blkbits;
 u64 p_blkno, count, past_eof;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 trace_ocfs2_get_block((unsigned long long)OCFS2_I(inode)->ip_blkno,
         (unsigned long long)iblock, bh_result, create);

 if (OCFS2_I(inode)->ip_flags & OCFS2_INODE_SYSTEM_FILE)
  mlog(ML_NOTICE, "get_block on system inode 0x%p (%lu)\n",
       inode, inode->i_ino);

 if (S_ISLNK(inode->i_mode)) {

  err = ocfs2_symlink_get_block(inode, iblock, bh_result, create);
  goto bail;
 }

 err = ocfs2_extent_map_get_blocks(inode, iblock, &p_blkno, &count,
       &ext_flags);
 if (err) {
  mlog(ML_ERROR, "Error %d from get_blocks(0x%p, %llu, 1, "
       "%llu, NULL)\n", err, inode, (unsigned long long)iblock,
       (unsigned long long)p_blkno);
  goto bail;
 }

 if (max_blocks < count)
  count = max_blocks;
 if (create && p_blkno == 0 && ocfs2_sparse_alloc(osb)) {
  clear_buffer_dirty(bh_result);
  clear_buffer_uptodate(bh_result);
  goto bail;
 }


 if (p_blkno && !(ext_flags & OCFS2_EXT_UNWRITTEN))
  map_bh(bh_result, inode->i_sb, p_blkno);

 bh_result->b_size = count << inode->i_blkbits;

 if (!ocfs2_sparse_alloc(osb)) {
  if (p_blkno == 0) {
   err = -EIO;
   mlog(ML_ERROR,
        "iblock = %llu p_blkno = %llu blkno=(%llu)\n",
        (unsigned long long)iblock,
        (unsigned long long)p_blkno,
        (unsigned long long)OCFS2_I(inode)->ip_blkno);
   mlog(ML_ERROR, "Size %llu, clusters %u\n", (unsigned long long)i_size_read(inode), OCFS2_I(inode)->ip_clusters);
   dump_stack();
   goto bail;
  }
 }

 past_eof = ocfs2_blocks_for_bytes(inode->i_sb, i_size_read(inode));

 trace_ocfs2_get_block_end((unsigned long long)OCFS2_I(inode)->ip_blkno,
      (unsigned long long)past_eof);
 if (create && (iblock >= past_eof))
  set_buffer_new(bh_result);

bail:
 if (err < 0)
  err = -EIO;

 return err;
}

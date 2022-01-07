
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {int sb; } ;
struct TYPE_9__ {TYPE_1__* l_recs; } ;
struct TYPE_10__ {TYPE_2__ i_list; } ;
struct ocfs2_dinode {TYPE_3__ id2; int i_clusters; } ;
struct inode {TYPE_4__* i_sb; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int b_page; } ;
typedef int sector_t ;
struct TYPE_12__ {scalar_t__ ip_blkno; } ;
struct TYPE_11__ {int s_blocksize_bits; } ;
struct TYPE_8__ {int e_blkno; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int ENOMEM ;
 int ML_ERROR ;
 TYPE_7__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (TYPE_4__*) ;
 int PATH_MAX ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int map_bh (struct buffer_head*,TYPE_4__*,int) ;
 int memcpy (void*,scalar_t__,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_clusters_to_blocks (TYPE_4__*,int ) ;
 int ocfs2_inode_is_fast_symlink (struct inode*) ;
 scalar_t__ ocfs2_inode_is_new (struct inode*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 struct buffer_head* sb_getblk (int ,scalar_t__) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int trace_ocfs2_symlink_get_block (unsigned long long,unsigned long long,struct buffer_head*,int) ;

__attribute__((used)) static int ocfs2_symlink_get_block(struct inode *inode, sector_t iblock,
       struct buffer_head *bh_result, int create)
{
 int err = -EIO;
 int status;
 struct ocfs2_dinode *fe = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 struct buffer_head *buffer_cache_bh = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 void *kaddr;

 trace_ocfs2_symlink_get_block(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   (unsigned long long)iblock, bh_result, create);

 BUG_ON(ocfs2_inode_is_fast_symlink(inode));

 if ((iblock << inode->i_sb->s_blocksize_bits) > PATH_MAX + 1) {
  mlog(ML_ERROR, "block offset > PATH_MAX: %llu",
       (unsigned long long)iblock);
  goto bail;
 }

 status = ocfs2_read_inode_block(inode, &bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 fe = (struct ocfs2_dinode *) bh->b_data;

 if ((u64)iblock >= ocfs2_clusters_to_blocks(inode->i_sb,
          le32_to_cpu(fe->i_clusters))) {
  err = -ENOMEM;
  mlog(ML_ERROR, "block offset is outside the allocated size: "
       "%llu\n", (unsigned long long)iblock);
  goto bail;
 }



 if (!buffer_uptodate(bh_result) && ocfs2_inode_is_new(inode)) {
  u64 blkno = le64_to_cpu(fe->id2.i_list.l_recs[0].e_blkno) +
       iblock;
  buffer_cache_bh = sb_getblk(osb->sb, blkno);
  if (!buffer_cache_bh) {
   err = -ENOMEM;
   mlog(ML_ERROR, "couldn't getblock for symlink!\n");
   goto bail;
  }





  if (buffer_jbd(buffer_cache_bh)
      && ocfs2_inode_is_new(inode)) {
   kaddr = kmap_atomic(bh_result->b_page);
   if (!kaddr) {
    mlog(ML_ERROR, "couldn't kmap!\n");
    goto bail;
   }
   memcpy(kaddr + (bh_result->b_size * iblock),
          buffer_cache_bh->b_data,
          bh_result->b_size);
   kunmap_atomic(kaddr);
   set_buffer_uptodate(bh_result);
  }
  brelse(buffer_cache_bh);
 }

 map_bh(bh_result, inode->i_sb,
        le64_to_cpu(fe->id2.i_list.l_recs[0].e_blkno) + iblock);

 err = 0;

bail:
 brelse(bh);

 return err;
}

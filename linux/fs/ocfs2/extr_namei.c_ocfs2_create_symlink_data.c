
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct inode {scalar_t__ i_blocks; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_clusters; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 struct buffer_head** kcalloc (int,int,int ) ;
 int kfree (struct buffer_head**) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_bytes (struct super_block*,int ) ;
 int ocfs2_extent_map_get_blocks (struct inode*,int ,int*,int*,int *) ;
 int ocfs2_journal_access (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int trace_ocfs2_create_symlink_data (unsigned long long,int,int) ;

__attribute__((used)) static int ocfs2_create_symlink_data(struct ocfs2_super *osb,
         handle_t *handle,
         struct inode *inode,
         const char *symname)
{
 struct buffer_head **bhs = ((void*)0);
 const char *c;
 struct super_block *sb = osb->sb;
 u64 p_blkno, p_blocks;
 int virtual, blocks, status, i, bytes_left;

 bytes_left = i_size_read(inode) + 1;


 blocks = (bytes_left + sb->s_blocksize - 1) >> sb->s_blocksize_bits;

 trace_ocfs2_create_symlink_data((unsigned long long)inode->i_blocks,
     i_size_read(inode), blocks);


 if (bytes_left >
     ocfs2_clusters_to_bytes(sb, OCFS2_I(inode)->ip_clusters)) {
  status = -EIO;
  mlog_errno(status);
  goto bail;
 }

 bhs = kcalloc(blocks, sizeof(struct buffer_head *), GFP_KERNEL);
 if (!bhs) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_extent_map_get_blocks(inode, 0, &p_blkno, &p_blocks,
          ((void*)0));
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }




 if ((p_blocks << sb->s_blocksize_bits) < bytes_left) {
  status = -EIO;
  mlog_errno(status);
  goto bail;
 }

 virtual = 0;
 while(bytes_left > 0) {
  c = &symname[virtual * sb->s_blocksize];

  bhs[virtual] = sb_getblk(sb, p_blkno);
  if (!bhs[virtual]) {
   status = -ENOMEM;
   mlog_errno(status);
   goto bail;
  }
  ocfs2_set_new_buffer_uptodate(INODE_CACHE(inode),
           bhs[virtual]);

  status = ocfs2_journal_access(handle, INODE_CACHE(inode),
           bhs[virtual],
           OCFS2_JOURNAL_ACCESS_CREATE);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  memset(bhs[virtual]->b_data, 0, sb->s_blocksize);

  memcpy(bhs[virtual]->b_data, c,
         (bytes_left > sb->s_blocksize) ? sb->s_blocksize :
         bytes_left);

  ocfs2_journal_dirty(handle, bhs[virtual]);

  virtual++;
  p_blkno++;
  bytes_left -= sb->s_blocksize;
 }

 status = 0;
bail:

 if (bhs) {
  for(i = 0; i < blocks; i++)
   brelse(bhs[i]);
  kfree(bhs);
 }

 if (status)
  mlog_errno(status);
 return status;
}

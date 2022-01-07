
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {TYPE_1__* sb; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_blocksize; int s_bdev; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 struct buffer_head* __find_get_block (int ,scalar_t__,int ) ;
 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_blocks_for_bytes (int ,int ) ;
 int ocfs2_extent_map_get_blocks (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int *) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_force_read_journal(struct inode *inode)
{
 int status = 0;
 int i;
 u64 v_blkno, p_blkno, p_blocks, num_blocks;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 num_blocks = ocfs2_blocks_for_bytes(inode->i_sb, i_size_read(inode));
 v_blkno = 0;
 while (v_blkno < num_blocks) {
  status = ocfs2_extent_map_get_blocks(inode, v_blkno,
           &p_blkno, &p_blocks, ((void*)0));
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  for (i = 0; i < p_blocks; i++, p_blkno++) {
   bh = __find_get_block(osb->sb->s_bdev, p_blkno,
     osb->sb->s_blocksize);

   if (!bh)
    continue;

   brelse(bh);
   bh = ((void*)0);



   status = ocfs2_read_blocks_sync(osb, p_blkno, 1, &bh);
   if (status < 0) {
    mlog_errno(status);
    goto bail;
   }

   brelse(bh);
   bh = ((void*)0);
  }

  v_blkno += p_blocks;
 }

bail:
 return status;
}

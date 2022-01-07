
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_alloc_sem; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int down_read (int *) ;
 int ocfs2_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int up_read (int *) ;

__attribute__((used)) static int ocfs2_lock_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh_result, int create)
{
 int ret = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 down_read(&oi->ip_alloc_sem);
 ret = ocfs2_get_block(inode, iblock, bh_result, create);
 up_read(&oi->ip_alloc_sem);

 return ret;
}

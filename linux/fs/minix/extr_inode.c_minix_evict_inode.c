
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; scalar_t__ i_size; int i_data; } ;


 int clear_inode (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int minix_free_inode (struct inode*) ;
 int minix_truncate (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void minix_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 if (!inode->i_nlink) {
  inode->i_size = 0;
  minix_truncate(inode);
 }
 invalidate_inode_buffers(inode);
 clear_inode(inode);
 if (!inode->i_nlink)
  minix_free_inode(inode);
}

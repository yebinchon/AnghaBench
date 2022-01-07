
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_nlink; int i_data; } ;


 int clear_inode (struct inode*) ;
 int fat_cache_inval_inode (struct inode*) ;
 int fat_detach (struct inode*) ;
 int fat_free_eofblocks (struct inode*) ;
 int fat_truncate_blocks (struct inode*,int ) ;
 int invalidate_inode_buffers (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void fat_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 if (!inode->i_nlink) {
  inode->i_size = 0;
  fat_truncate_blocks(inode, 0);
 } else
  fat_free_eofblocks(inode);

 invalidate_inode_buffers(inode);
 clear_inode(inode);
 fat_cache_inval_inode(inode);
 fat_detach(inode);
}

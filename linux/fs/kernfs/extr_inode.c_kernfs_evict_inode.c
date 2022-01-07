
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct inode {int i_data; struct kernfs_node* i_private; } ;


 int clear_inode (struct inode*) ;
 int kernfs_put (struct kernfs_node*) ;
 int truncate_inode_pages_final (int *) ;

void kernfs_evict_inode(struct inode *inode)
{
 struct kernfs_node *kn = inode->i_private;

 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 kernfs_put(kn);
}

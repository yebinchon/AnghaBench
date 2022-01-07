
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; } ;


 int clear_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

void
vxfs_evict_inode(struct inode *ip)
{
 truncate_inode_pages_final(&ip->i_data);
 clear_inode(ip);
}

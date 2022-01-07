
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; } ;
struct TYPE_2__ {struct inode* rsrc_inode; } ;


 TYPE_1__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 int clear_inode (struct inode*) ;
 int iput (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

void hfs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 if (HFS_IS_RSRC(inode) && HFS_I(inode)->rsrc_inode) {
  HFS_I(HFS_I(inode)->rsrc_inode)->rsrc_inode = ((void*)0);
  iput(HFS_I(inode)->rsrc_inode);
 }
}

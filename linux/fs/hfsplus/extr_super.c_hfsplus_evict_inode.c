
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; int i_ino; } ;
struct TYPE_2__ {struct inode* rsrc_inode; } ;


 TYPE_1__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 int INODE ;
 int clear_inode (struct inode*) ;
 int hfs_dbg (int ,char*,int ) ;
 int iput (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void hfsplus_evict_inode(struct inode *inode)
{
 hfs_dbg(INODE, "hfsplus_evict_inode: %lu\n", inode->i_ino);
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 if (HFSPLUS_IS_RSRC(inode)) {
  HFSPLUS_I(HFSPLUS_I(inode)->rsrc_inode)->rsrc_inode = ((void*)0);
  iput(HFSPLUS_I(inode)->rsrc_inode);
 }
}

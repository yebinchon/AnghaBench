
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int opencnt; struct inode* rsrc_inode; } ;


 TYPE_1__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 int atomic_inc (int *) ;

__attribute__((used)) static int hfs_file_open(struct inode *inode, struct file *file)
{
 if (HFS_IS_RSRC(inode))
  inode = HFS_I(inode)->rsrc_inode;
 atomic_inc(&HFS_I(inode)->opencnt);
 return 0;
}

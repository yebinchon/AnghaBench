
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int opencnt; struct inode* rsrc_inode; } ;


 int EOVERFLOW ;
 TYPE_1__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 scalar_t__ MAX_NON_LFS ;
 int O_LARGEFILE ;
 int atomic_inc (int *) ;
 scalar_t__ i_size_read (struct inode*) ;

__attribute__((used)) static int hfsplus_file_open(struct inode *inode, struct file *file)
{
 if (HFSPLUS_IS_RSRC(inode))
  inode = HFSPLUS_I(inode)->rsrc_inode;
 if (!(file->f_flags & O_LARGEFILE) && i_size_read(inode) > MAX_NON_LFS)
  return -EOVERFLOW;
 atomic_inc(&HFSPLUS_I(inode)->opencnt);
 return 0;
}

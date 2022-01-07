
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct file {int f_mode; } ;
struct TYPE_3__ {scalar_t__ flush; } ;
struct TYPE_4__ {TYPE_1__ options; } ;


 int BLK_RW_ASYNC ;
 int FMODE_WRITE ;
 int HZ ;
 TYPE_2__* MSDOS_SB (int ) ;
 int congestion_wait (int ,int) ;
 int fat_flush_inodes (int ,struct inode*,int *) ;

__attribute__((used)) static int fat_file_release(struct inode *inode, struct file *filp)
{
 if ((filp->f_mode & FMODE_WRITE) &&
      MSDOS_SB(inode->i_sb)->options.flush) {
  fat_flush_inodes(inode->i_sb, inode, ((void*)0));
  congestion_wait(BLK_RW_ASYNC, HZ/10);
 }
 return 0;
}

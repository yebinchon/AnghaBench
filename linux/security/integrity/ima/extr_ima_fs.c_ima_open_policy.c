
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EBUSY ;
 int EPERM ;
 int IMA_FS_BUSY ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int capable (int ) ;
 int ima_fs_flags ;
 int ima_policy_seqops ;
 int seq_open (struct file*,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ima_open_policy(struct inode *inode, struct file *filp)
{
 if (!(filp->f_flags & O_WRONLY)) {

  return -EACCES;







 }
 if (test_and_set_bit(IMA_FS_BUSY, &ima_fs_flags))
  return -EBUSY;
 return 0;
}

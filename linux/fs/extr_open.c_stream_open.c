
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_ATOMIC_POS ;
 int FMODE_LSEEK ;
 int FMODE_PREAD ;
 int FMODE_PWRITE ;
 int FMODE_STREAM ;

int stream_open(struct inode *inode, struct file *filp)
{
 filp->f_mode &= ~(FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE | FMODE_ATOMIC_POS);
 filp->f_mode |= FMODE_STREAM;
 return 0;
}

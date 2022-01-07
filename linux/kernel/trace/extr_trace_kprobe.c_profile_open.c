
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int LOCKDOWN_TRACEFS ;
 int profile_seq_op ;
 int security_locked_down (int ) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int profile_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 return seq_open(file, &profile_seq_op);
}

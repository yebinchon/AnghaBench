
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int LOCKDOWN_TRACEFS ;
 int security_locked_down (int ) ;
 int seq_open (struct file*,int *) ;
 int stack_trace_seq_ops ;

__attribute__((used)) static int stack_trace_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 return seq_open(file, &stack_trace_seq_ops);
}

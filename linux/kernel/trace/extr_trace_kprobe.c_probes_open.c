
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;


 int FMODE_WRITE ;
 int LOCKDOWN_TRACEFS ;
 int O_TRUNC ;
 int dyn_events_release_all (int *) ;
 int probes_seq_op ;
 int security_locked_down (int ) ;
 int seq_open (struct file*,int *) ;
 int trace_kprobe_ops ;

__attribute__((used)) static int probes_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
  ret = dyn_events_release_all(&trace_kprobe_ops);
  if (ret < 0)
   return ret;
 }

 return seq_open(file, &probes_seq_op);
}

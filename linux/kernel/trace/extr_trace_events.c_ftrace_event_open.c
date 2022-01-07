
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int LOCKDOWN_TRACEFS ;
 int security_locked_down (int ) ;
 int seq_open (struct file*,struct seq_operations const*) ;

__attribute__((used)) static int
ftrace_event_open(struct inode *inode, struct file *file,
    const struct seq_operations *seq_ops)
{
 struct seq_file *m;
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 ret = seq_open(file, seq_ops);
 if (ret < 0)
  return ret;
 m = file->private_data;

 m->private = inode->i_private;

 return ret;
}

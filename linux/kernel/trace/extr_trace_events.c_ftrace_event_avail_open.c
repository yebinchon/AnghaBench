
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ftrace_event_open (struct inode*,struct file*,struct seq_operations const*) ;
 struct seq_operations show_event_seq_ops ;

__attribute__((used)) static int
ftrace_event_avail_open(struct inode *inode, struct file *file)
{
 const struct seq_operations *seq_ops = &show_event_seq_ops;


 return ftrace_event_open(inode, file, seq_ops);
}

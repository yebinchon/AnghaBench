
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct jbd2_stats_proc_session* private; } ;
struct jbd2_stats_proc_session {struct jbd2_stats_proc_session* stats; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (struct jbd2_stats_proc_session*) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int jbd2_seq_info_release(struct inode *inode, struct file *file)
{
 struct seq_file *seq = file->private_data;
 struct jbd2_stats_proc_session *s = seq->private;
 kfree(s->stats);
 kfree(s);
 return seq_release(inode, file);
}

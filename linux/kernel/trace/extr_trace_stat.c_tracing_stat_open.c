
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_session {int dummy; } ;
struct seq_file {struct stat_session* private; } ;
struct inode {struct stat_session* i_private; } ;
struct file {struct seq_file* private_data; } ;


 int LOCKDOWN_TRACEFS ;
 int reset_stat_session (struct stat_session*) ;
 int security_locked_down (int ) ;
 int seq_open (struct file*,int *) ;
 int stat_seq_init (struct stat_session*) ;
 int trace_stat_seq_ops ;

__attribute__((used)) static int tracing_stat_open(struct inode *inode, struct file *file)
{
 int ret;
 struct seq_file *m;
 struct stat_session *session = inode->i_private;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 ret = stat_seq_init(session);
 if (ret)
  return ret;

 ret = seq_open(file, &trace_stat_seq_ops);
 if (ret) {
  reset_stat_session(session);
  return ret;
 }

 m = file->private_data;
 m->private = session;
 return ret;
}

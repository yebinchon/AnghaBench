
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct transaction_stats_s {int dummy; } ;
struct seq_file {struct jbd2_stats_proc_session* private; } ;
struct jbd2_stats_proc_session {struct jbd2_stats_proc_session* stats; TYPE_1__* journal; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_3__ {int j_history_lock; int j_stats; } ;
typedef TYPE_1__ journal_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* PDE_DATA (struct inode*) ;
 int jbd2_seq_info_ops ;
 int kfree (struct jbd2_stats_proc_session*) ;
 void* kmalloc (int,int ) ;
 int memcpy (struct jbd2_stats_proc_session*,int *,int) ;
 int seq_open (struct file*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int jbd2_seq_info_open(struct inode *inode, struct file *file)
{
 journal_t *journal = PDE_DATA(inode);
 struct jbd2_stats_proc_session *s;
 int rc, size;

 s = kmalloc(sizeof(*s), GFP_KERNEL);
 if (s == ((void*)0))
  return -ENOMEM;
 size = sizeof(struct transaction_stats_s);
 s->stats = kmalloc(size, GFP_KERNEL);
 if (s->stats == ((void*)0)) {
  kfree(s);
  return -ENOMEM;
 }
 spin_lock(&journal->j_history_lock);
 memcpy(s->stats, &journal->j_stats, size);
 s->journal = journal;
 spin_unlock(&journal->j_history_lock);

 rc = seq_open(file, &jbd2_seq_info_ops);
 if (rc == 0) {
  struct seq_file *m = file->private_data;
  m->private = s;
 } else {
  kfree(s->stats);
  kfree(s);
 }
 return rc;

}

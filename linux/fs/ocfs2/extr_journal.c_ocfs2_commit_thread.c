
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int checkpoint_event; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int j_num_trans; } ;


 int HZ ;
 int ML_ERROR ;
 int ML_KTHREAD ;
 int atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;
 int mlog (int ,char*,int) ;
 int msleep_interruptible (int) ;
 int ocfs2_commit_cache (struct ocfs2_super*) ;
 scalar_t__ printk_timed_ratelimit (unsigned long*,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ocfs2_commit_thread(void *arg)
{
 int status;
 struct ocfs2_super *osb = arg;
 struct ocfs2_journal *journal = osb->journal;





 while (!(kthread_should_stop() &&
   atomic_read(&journal->j_num_trans) == 0)) {

  wait_event_interruptible(osb->checkpoint_event,
      atomic_read(&journal->j_num_trans)
      || kthread_should_stop());

  status = ocfs2_commit_cache(osb);
  if (status < 0) {
   static unsigned long abort_warn_time;


   if (printk_timed_ratelimit(&abort_warn_time, 60*HZ))
    mlog(ML_ERROR, "status = %d, journal is "
      "already aborted.\n", status);





   msleep_interruptible(1000);
  }

  if (kthread_should_stop() && atomic_read(&journal->j_num_trans)){
   mlog(ML_KTHREAD,
        "commit_thread: %u transactions pending on "
        "shutdown\n",
        atomic_read(&journal->j_num_trans));
  }
 }

 return 0;
}

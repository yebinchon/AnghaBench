
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dlm_reco_thread_wq; int name; } ;


 int DLM_RECO_THREAD_TIMEOUT_MS ;
 int EAGAIN ;
 int dlm_do_recovery (struct dlm_ctxt*) ;
 scalar_t__ dlm_domain_fully_joined (struct dlm_ctxt*) ;
 int kthread_should_stop () ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int ,unsigned long) ;

__attribute__((used)) static int dlm_recovery_thread(void *data)
{
 int status;
 struct dlm_ctxt *dlm = data;
 unsigned long timeout = msecs_to_jiffies(DLM_RECO_THREAD_TIMEOUT_MS);

 mlog(0, "dlm thread running for %s...\n", dlm->name);

 while (!kthread_should_stop()) {
  if (dlm_domain_fully_joined(dlm)) {
   status = dlm_do_recovery(dlm);
   if (status == -EAGAIN) {

    continue;
   }
   if (status < 0)
    mlog_errno(status);
  }

  wait_event_interruptible_timeout(dlm->dlm_reco_thread_wq,
       kthread_should_stop(),
       timeout);
 }

 mlog(0, "quitting DLM recovery thread\n");
 return 0;
}

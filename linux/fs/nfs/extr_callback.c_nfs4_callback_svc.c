
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;


 int EAGAIN ;
 int EINTR ;
 int MAX_SCHEDULE_TIMEOUT ;
 int current ;
 int flush_signals (int ) ;
 int kthread_freezable_should_stop (int *) ;
 int module_put_and_exit (int ) ;
 int set_freezable () ;
 scalar_t__ signal_pending (int ) ;
 int svc_exit_thread (struct svc_rqst*) ;
 int svc_process (struct svc_rqst*) ;
 int svc_recv (struct svc_rqst*,int ) ;

__attribute__((used)) static int
nfs4_callback_svc(void *vrqstp)
{
 int err;
 struct svc_rqst *rqstp = vrqstp;

 set_freezable();

 while (!kthread_freezable_should_stop(((void*)0))) {

  if (signal_pending(current))
   flush_signals(current);



  err = svc_recv(rqstp, MAX_SCHEDULE_TIMEOUT);
  if (err == -EAGAIN || err == -EINTR)
   continue;
  svc_process(rqstp);
 }
 svc_exit_thread(rqstp);
 module_put_and_exit(0);
 return 0;
}

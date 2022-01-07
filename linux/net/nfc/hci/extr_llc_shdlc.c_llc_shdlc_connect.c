
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_shdlc {int connect_result; int sm_work; int state_mutex; scalar_t__ connect_tries; int * connect_wq; int state; } ;


 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int SHDLC_CONNECTING ;
 int connect_wq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int llc_shdlc_connect(struct llc_shdlc *shdlc)
{
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(connect_wq);

 pr_debug("\n");

 mutex_lock(&shdlc->state_mutex);

 shdlc->state = SHDLC_CONNECTING;
 shdlc->connect_wq = &connect_wq;
 shdlc->connect_tries = 0;
 shdlc->connect_result = 1;

 mutex_unlock(&shdlc->state_mutex);

 schedule_work(&shdlc->sm_work);

 wait_event(connect_wq, shdlc->connect_result != 1);

 return shdlc->connect_result;
}

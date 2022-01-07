
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_shdlc {int sm_work; int state_mutex; int state; } ;


 int SHDLC_DISCONNECTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void llc_shdlc_disconnect(struct llc_shdlc *shdlc)
{
 pr_debug("\n");

 mutex_lock(&shdlc->state_mutex);

 shdlc->state = SHDLC_DISCONNECTED;

 mutex_unlock(&shdlc->state_mutex);

 schedule_work(&shdlc->sm_work);
}

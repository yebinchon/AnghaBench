
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct llc_shdlc {int sm_work; } ;


 struct llc_shdlc* from_timer (int ,struct timer_list*,int ) ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;
 struct llc_shdlc* shdlc ;
 int t1_timer ;

__attribute__((used)) static void llc_shdlc_t1_timeout(struct timer_list *t)
{
 struct llc_shdlc *shdlc = from_timer(shdlc, t, t1_timer);

 pr_debug("SoftIRQ: need to send ack\n");

 schedule_work(&shdlc->sm_work);
}

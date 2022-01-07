
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
 int t2_timer ;

__attribute__((used)) static void llc_shdlc_t2_timeout(struct timer_list *t)
{
 struct llc_shdlc *shdlc = from_timer(shdlc, t, t2_timer);

 pr_debug("SoftIRQ: need to retransmit\n");

 schedule_work(&shdlc->sm_work);
}

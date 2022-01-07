
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_shdlc {int connect_result; int connect_wq; int state; scalar_t__ dnr; scalar_t__ nr; scalar_t__ ns; int connect_timer; } ;


 int SHDLC_DISCONNECTED ;
 int SHDLC_HALF_CONNECTED ;
 int del_timer_sync (int *) ;
 int pr_debug (char*,int) ;
 int wake_up (int ) ;

__attribute__((used)) static void llc_shdlc_connect_complete(struct llc_shdlc *shdlc, int r)
{
 pr_debug("result=%d\n", r);

 del_timer_sync(&shdlc->connect_timer);

 if (r == 0) {
  shdlc->ns = 0;
  shdlc->nr = 0;
  shdlc->dnr = 0;

  shdlc->state = SHDLC_HALF_CONNECTED;
 } else {
  shdlc->state = SHDLC_DISCONNECTED;
 }

 shdlc->connect_result = r;

 wake_up(shdlc->connect_wq);
}

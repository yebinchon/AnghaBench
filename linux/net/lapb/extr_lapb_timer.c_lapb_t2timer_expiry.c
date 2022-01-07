
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lapb_cb {int condition; } ;


 int LAPB_ACK_PENDING_CONDITION ;
 struct lapb_cb* from_timer (int ,struct timer_list*,int ) ;
 struct lapb_cb* lapb ;
 int lapb_timeout_response (struct lapb_cb*) ;
 int t2timer ;

__attribute__((used)) static void lapb_t2timer_expiry(struct timer_list *t)
{
 struct lapb_cb *lapb = from_timer(lapb, t, t2timer);

 if (lapb->condition & LAPB_ACK_PENDING_CONDITION) {
  lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;
  lapb_timeout_response(lapb);
 }
}

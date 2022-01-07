
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct garp_applicant {int lock; } ;


 int GARP_EVENT_TRANSMIT_PDU ;
 struct garp_applicant* app ;
 struct garp_applicant* from_timer (int ,struct timer_list*,int ) ;
 int garp_gid_event (struct garp_applicant*,int ) ;
 int garp_join_timer_arm (struct garp_applicant*) ;
 int garp_pdu_queue (struct garp_applicant*) ;
 int garp_queue_xmit (struct garp_applicant*) ;
 int join_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void garp_join_timer(struct timer_list *t)
{
 struct garp_applicant *app = from_timer(app, t, join_timer);

 spin_lock(&app->lock);
 garp_gid_event(app, GARP_EVENT_TRANSMIT_PDU);
 garp_pdu_queue(app);
 spin_unlock(&app->lock);

 garp_queue_xmit(app);
 garp_join_timer_arm(app);
}

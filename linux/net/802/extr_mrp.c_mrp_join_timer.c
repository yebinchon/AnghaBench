
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mrp_applicant {int lock; } ;


 int MRP_EVENT_TX ;
 struct mrp_applicant* app ;
 struct mrp_applicant* from_timer (int ,struct timer_list*,int ) ;
 int join_timer ;
 int mrp_join_timer_arm (struct mrp_applicant*) ;
 int mrp_mad_event (struct mrp_applicant*,int ) ;
 int mrp_pdu_queue (struct mrp_applicant*) ;
 int mrp_queue_xmit (struct mrp_applicant*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mrp_join_timer(struct timer_list *t)
{
 struct mrp_applicant *app = from_timer(app, t, join_timer);

 spin_lock(&app->lock);
 mrp_mad_event(app, MRP_EVENT_TX);
 mrp_pdu_queue(app);
 spin_unlock(&app->lock);

 mrp_queue_xmit(app);
 mrp_join_timer_arm(app);
}

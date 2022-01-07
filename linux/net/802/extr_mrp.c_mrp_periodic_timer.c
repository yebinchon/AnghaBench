
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mrp_applicant {int lock; } ;


 int MRP_EVENT_PERIODIC ;
 struct mrp_applicant* app ;
 struct mrp_applicant* from_timer (int ,struct timer_list*,int ) ;
 int mrp_mad_event (struct mrp_applicant*,int ) ;
 int mrp_pdu_queue (struct mrp_applicant*) ;
 int mrp_periodic_timer_arm (struct mrp_applicant*) ;
 int periodic_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mrp_periodic_timer(struct timer_list *t)
{
 struct mrp_applicant *app = from_timer(app, t, periodic_timer);

 spin_lock(&app->lock);
 mrp_mad_event(app, MRP_EVENT_PERIODIC);
 mrp_pdu_queue(app);
 spin_unlock(&app->lock);

 mrp_periodic_timer_arm(app);
}

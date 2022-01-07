
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mrp_port; } ;
struct mrp_port {int * applicants; } ;
struct mrp_application {size_t type; int group_address; } ;
struct mrp_applicant {int lock; int periodic_timer; int join_timer; } ;


 int ASSERT_RTNL () ;
 int MRP_EVENT_TX ;
 int RCU_INIT_POINTER (int ,int *) ;
 int del_timer_sync (int *) ;
 int dev_mc_del (struct net_device*,int ) ;
 int kfree_rcu (struct mrp_applicant*,int ) ;
 int mrp_mad_event (struct mrp_applicant*,int ) ;
 int mrp_pdu_queue (struct mrp_applicant*) ;
 int mrp_queue_xmit (struct mrp_applicant*) ;
 int mrp_release_port (struct net_device*) ;
 int rcu ;
 void* rtnl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mrp_uninit_applicant(struct net_device *dev, struct mrp_application *appl)
{
 struct mrp_port *port = rtnl_dereference(dev->mrp_port);
 struct mrp_applicant *app = rtnl_dereference(
  port->applicants[appl->type]);

 ASSERT_RTNL();

 RCU_INIT_POINTER(port->applicants[appl->type], ((void*)0));




 del_timer_sync(&app->join_timer);
 del_timer_sync(&app->periodic_timer);

 spin_lock_bh(&app->lock);
 mrp_mad_event(app, MRP_EVENT_TX);
 mrp_pdu_queue(app);
 spin_unlock_bh(&app->lock);

 mrp_queue_xmit(app);

 dev_mc_del(dev, appl->group_address);
 kfree_rcu(app, rcu);
 mrp_release_port(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int garp_port; } ;
struct garp_port {int * applicants; } ;
struct TYPE_2__ {int group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int lock; int join_timer; } ;


 int ASSERT_RTNL () ;
 int GARP_EVENT_TRANSMIT_PDU ;
 int RCU_INIT_POINTER (int ,int *) ;
 int del_timer_sync (int *) ;
 int dev_mc_del (struct net_device*,int ) ;
 int garp_gid_event (struct garp_applicant*,int ) ;
 int garp_pdu_queue (struct garp_applicant*) ;
 int garp_queue_xmit (struct garp_applicant*) ;
 int garp_release_port (struct net_device*) ;
 int kfree_rcu (struct garp_applicant*,int ) ;
 int rcu ;
 void* rtnl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void garp_uninit_applicant(struct net_device *dev, struct garp_application *appl)
{
 struct garp_port *port = rtnl_dereference(dev->garp_port);
 struct garp_applicant *app = rtnl_dereference(port->applicants[appl->type]);

 ASSERT_RTNL();

 RCU_INIT_POINTER(port->applicants[appl->type], ((void*)0));



 del_timer_sync(&app->join_timer);

 spin_lock_bh(&app->lock);
 garp_gid_event(app, GARP_EVENT_TRANSMIT_PDU);
 garp_pdu_queue(app);
 spin_unlock_bh(&app->lock);

 garp_queue_xmit(app);

 dev_mc_del(dev, appl->proto.group_address);
 kfree_rcu(app, rcu);
 garp_release_port(dev);
}

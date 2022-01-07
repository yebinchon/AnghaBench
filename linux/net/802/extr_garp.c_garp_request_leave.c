
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int garp_port; } ;
struct garp_port {int * applicants; } ;
struct garp_attr {int dummy; } ;
struct garp_application {size_t type; } ;
struct garp_applicant {int lock; } ;


 int GARP_EVENT_REQ_LEAVE ;
 int garp_attr_event (struct garp_applicant*,struct garp_attr*,int ) ;
 struct garp_attr* garp_attr_lookup (struct garp_applicant*,void const*,int ,int ) ;
 void* rtnl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void garp_request_leave(const struct net_device *dev,
   const struct garp_application *appl,
   const void *data, u8 len, u8 type)
{
 struct garp_port *port = rtnl_dereference(dev->garp_port);
 struct garp_applicant *app = rtnl_dereference(port->applicants[appl->type]);
 struct garp_attr *attr;

 spin_lock_bh(&app->lock);
 attr = garp_attr_lookup(app, data, len, type);
 if (!attr) {
  spin_unlock_bh(&app->lock);
  return;
 }
 garp_attr_event(app, attr, GARP_EVENT_REQ_LEAVE);
 spin_unlock_bh(&app->lock);
}

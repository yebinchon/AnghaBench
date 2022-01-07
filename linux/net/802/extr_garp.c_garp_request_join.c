
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


 int ENOMEM ;
 int GARP_EVENT_REQ_JOIN ;
 struct garp_attr* garp_attr_create (struct garp_applicant*,void const*,int ,int ) ;
 int garp_attr_event (struct garp_applicant*,struct garp_attr*,int ) ;
 void* rtnl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int garp_request_join(const struct net_device *dev,
        const struct garp_application *appl,
        const void *data, u8 len, u8 type)
{
 struct garp_port *port = rtnl_dereference(dev->garp_port);
 struct garp_applicant *app = rtnl_dereference(port->applicants[appl->type]);
 struct garp_attr *attr;

 spin_lock_bh(&app->lock);
 attr = garp_attr_create(app, data, len, type);
 if (!attr) {
  spin_unlock_bh(&app->lock);
  return -ENOMEM;
 }
 garp_attr_event(app, attr, GARP_EVENT_REQ_JOIN);
 spin_unlock_bh(&app->lock);
 return 0;
}

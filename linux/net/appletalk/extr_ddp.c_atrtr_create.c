
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ s_net; scalar_t__ s_node; } ;
struct sockaddr_at {scalar_t__ sat_family; TYPE_3__ sat_addr; } ;
struct rtentry {int rt_flags; int rt_gateway; int rt_dst; } ;
struct net_device {int dummy; } ;
struct atalk_route {int flags; TYPE_3__ gateway; struct net_device* dev; TYPE_3__ target; struct atalk_route* next; } ;
struct TYPE_5__ {scalar_t__ s_net; scalar_t__ s_node; } ;
struct TYPE_4__ {scalar_t__ nr_firstnet; scalar_t__ nr_lastnet; } ;
struct atalk_iface {struct net_device* dev; TYPE_2__ address; TYPE_1__ nets; struct atalk_iface* next; } ;


 scalar_t__ AF_APPLETALK ;
 int EINVAL ;
 int ENETUNREACH ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTF_HOST ;
 struct atalk_iface* atalk_interfaces ;
 int atalk_interfaces_lock ;
 struct atalk_route* atalk_routes ;
 int atalk_routes_lock ;
 int dev_hold (struct net_device*) ;
 struct atalk_route* kzalloc (int,int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int atrtr_create(struct rtentry *r, struct net_device *devhint)
{
 struct sockaddr_at *ta = (struct sockaddr_at *)&r->rt_dst;
 struct sockaddr_at *ga = (struct sockaddr_at *)&r->rt_gateway;
 struct atalk_route *rt;
 struct atalk_iface *iface, *riface;
 int retval = -EINVAL;







 if (ta->sat_family != AF_APPLETALK ||
     (!devhint && ga->sat_family != AF_APPLETALK))
  goto out;


 write_lock_bh(&atalk_routes_lock);
 for (rt = atalk_routes; rt; rt = rt->next) {
  if (r->rt_flags != rt->flags)
   continue;

  if (ta->sat_addr.s_net == rt->target.s_net) {
   if (!(rt->flags & RTF_HOST))
    break;
   if (ta->sat_addr.s_node == rt->target.s_node)
    break;
  }
 }

 if (!devhint) {
  riface = ((void*)0);

  read_lock_bh(&atalk_interfaces_lock);
  for (iface = atalk_interfaces; iface; iface = iface->next) {
   if (!riface &&
       ntohs(ga->sat_addr.s_net) >=
     ntohs(iface->nets.nr_firstnet) &&
       ntohs(ga->sat_addr.s_net) <=
     ntohs(iface->nets.nr_lastnet))
    riface = iface;

   if (ga->sat_addr.s_net == iface->address.s_net &&
       ga->sat_addr.s_node == iface->address.s_node)
    riface = iface;
  }
  read_unlock_bh(&atalk_interfaces_lock);

  retval = -ENETUNREACH;
  if (!riface)
   goto out_unlock;

  devhint = riface->dev;
 }

 if (!rt) {
  rt = kzalloc(sizeof(*rt), GFP_ATOMIC);

  retval = -ENOBUFS;
  if (!rt)
   goto out_unlock;

  rt->next = atalk_routes;
  atalk_routes = rt;
 }


 rt->target = ta->sat_addr;
 dev_hold(devhint);
 rt->dev = devhint;
 rt->flags = r->rt_flags;
 rt->gateway = ga->sat_addr;

 retval = 0;
out_unlock:
 write_unlock_bh(&atalk_routes_lock);
out:
 return retval;
}

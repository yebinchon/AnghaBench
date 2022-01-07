
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct net_device {int ifindex; int flags; } ;
struct net {struct net_device* loopback_dev; } ;
struct flowi4 {int flowi4_oif; int flowi4_flags; scalar_t__ flowi4_proto; void* daddr; void* saddr; int flowi4_scope; } ;
struct fib_result {scalar_t__ type; TYPE_1__* fi; int * table; } ;
struct TYPE_2__ {void* fib_prefsrc; } ;


 int EINVAL ;
 int ENETUNREACH ;
 int ENODEV ;
 struct rtable* ERR_PTR (int) ;
 struct net_device* FIB_RES_DEV (struct fib_result) ;
 int FIB_RES_OIF (struct fib_result) ;
 int FLOWI_FLAG_ANYSRC ;
 int IFF_UP ;
 int INADDR_LOOPBACK ;
 scalar_t__ IPPROTO_IGMP ;
 int LOOPBACK_IFINDEX ;
 unsigned int RTCF_LOCAL ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ RTN_UNICAST ;
 int RT_SCOPE_HOST ;
 int RT_SCOPE_LINK ;
 int __in_dev_get_rcu (struct net_device*) ;
 struct net_device* __ip_dev_find (struct net*,void*,int) ;
 struct rtable* __mkroute_output (struct fib_result*,struct flowi4*,int,struct net_device*,unsigned int) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int fib_lookup (struct net*,struct flowi4*,struct fib_result*,int ) ;
 int fib_select_path (struct net*,struct fib_result*,struct flowi4*,struct sk_buff const*) ;
 void* htonl (int ) ;
 void* inet_select_addr (struct net_device*,int ,int ) ;
 scalar_t__ ipv4_is_lbcast (void*) ;
 scalar_t__ ipv4_is_local_multicast (void*) ;
 scalar_t__ ipv4_is_multicast (void*) ;
 scalar_t__ ipv4_is_zeronet (void*) ;
 scalar_t__ l3mdev_master_dev_rcu (struct net_device*) ;
 int netif_index_is_l3_master (struct net*,int) ;

struct rtable *ip_route_output_key_hash_rcu(struct net *net, struct flowi4 *fl4,
         struct fib_result *res,
         const struct sk_buff *skb)
{
 struct net_device *dev_out = ((void*)0);
 int orig_oif = fl4->flowi4_oif;
 unsigned int flags = 0;
 struct rtable *rth;
 int err;

 if (fl4->saddr) {
  if (ipv4_is_multicast(fl4->saddr) ||
      ipv4_is_lbcast(fl4->saddr) ||
      ipv4_is_zeronet(fl4->saddr)) {
   rth = ERR_PTR(-EINVAL);
   goto out;
  }

  rth = ERR_PTR(-ENETUNREACH);
  if (fl4->flowi4_oif == 0 &&
      (ipv4_is_multicast(fl4->daddr) ||
       ipv4_is_lbcast(fl4->daddr))) {

   dev_out = __ip_dev_find(net, fl4->saddr, 0);
   if (!dev_out)
    goto out;
   fl4->flowi4_oif = dev_out->ifindex;
   goto make_route;
  }

  if (!(fl4->flowi4_flags & FLOWI_FLAG_ANYSRC)) {

   if (!__ip_dev_find(net, fl4->saddr, 0))
    goto out;
  }
 }


 if (fl4->flowi4_oif) {
  dev_out = dev_get_by_index_rcu(net, fl4->flowi4_oif);
  rth = ERR_PTR(-ENODEV);
  if (!dev_out)
   goto out;


  if (!(dev_out->flags & IFF_UP) || !__in_dev_get_rcu(dev_out)) {
   rth = ERR_PTR(-ENETUNREACH);
   goto out;
  }
  if (ipv4_is_local_multicast(fl4->daddr) ||
      ipv4_is_lbcast(fl4->daddr) ||
      fl4->flowi4_proto == IPPROTO_IGMP) {
   if (!fl4->saddr)
    fl4->saddr = inet_select_addr(dev_out, 0,
             RT_SCOPE_LINK);
   goto make_route;
  }
  if (!fl4->saddr) {
   if (ipv4_is_multicast(fl4->daddr))
    fl4->saddr = inet_select_addr(dev_out, 0,
             fl4->flowi4_scope);
   else if (!fl4->daddr)
    fl4->saddr = inet_select_addr(dev_out, 0,
             RT_SCOPE_HOST);
  }
 }

 if (!fl4->daddr) {
  fl4->daddr = fl4->saddr;
  if (!fl4->daddr)
   fl4->daddr = fl4->saddr = htonl(INADDR_LOOPBACK);
  dev_out = net->loopback_dev;
  fl4->flowi4_oif = LOOPBACK_IFINDEX;
  res->type = RTN_LOCAL;
  flags |= RTCF_LOCAL;
  goto make_route;
 }

 err = fib_lookup(net, fl4, res, 0);
 if (err) {
  res->fi = ((void*)0);
  res->table = ((void*)0);
  if (fl4->flowi4_oif &&
      (ipv4_is_multicast(fl4->daddr) ||
      !netif_index_is_l3_master(net, fl4->flowi4_oif))) {
   if (fl4->saddr == 0)
    fl4->saddr = inet_select_addr(dev_out, 0,
             RT_SCOPE_LINK);
   res->type = RTN_UNICAST;
   goto make_route;
  }
  rth = ERR_PTR(err);
  goto out;
 }

 if (res->type == RTN_LOCAL) {
  if (!fl4->saddr) {
   if (res->fi->fib_prefsrc)
    fl4->saddr = res->fi->fib_prefsrc;
   else
    fl4->saddr = fl4->daddr;
  }


  dev_out = l3mdev_master_dev_rcu(FIB_RES_DEV(*res)) ? :
   net->loopback_dev;




  orig_oif = FIB_RES_OIF(*res);

  fl4->flowi4_oif = dev_out->ifindex;
  flags |= RTCF_LOCAL;
  goto make_route;
 }

 fib_select_path(net, res, fl4, skb);

 dev_out = FIB_RES_DEV(*res);
 fl4->flowi4_oif = dev_out->ifindex;


make_route:
 rth = __mkroute_output(res, fl4, orig_oif, dev_out, flags);

out:
 return rth;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int mark; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {struct net_device* loopback_dev; } ;
struct in_device {int * ifa_list; } ;
struct TYPE_3__ {scalar_t__ tun_id; } ;
struct flowi4 {scalar_t__ flowi4_oif; scalar_t__ fl4_dport; scalar_t__ fl4_sport; scalar_t__ flowi4_proto; int flowi4_mark; int flowi4_uid; scalar_t__ flowi4_flags; TYPE_1__ flowi4_tun_key; int flowi4_scope; int flowi4_tos; void* saddr; void* daddr; scalar_t__ flowi4_iif; } ;
struct flow_keys {int dummy; } ;
struct fib_result {scalar_t__ type; int fi; } ;
typedef void* __be32 ;
struct TYPE_4__ {scalar_t__ nhc_scope; } ;


 int EINVAL ;
 int EXDEV ;
 int FIB_LOOKUP_IGNORE_LINKSTATE ;
 TYPE_2__* FIB_RES_NHC (struct fib_result) ;
 int IN_DEV_ACCEPT_LOCAL (struct in_device*) ;
 scalar_t__ IN_DEV_SRC_VMARK (struct in_device*) ;
 scalar_t__ LOOPBACK_IFINDEX ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ RTN_UNICAST ;
 scalar_t__ RT_SCOPE_HOST ;
 int RT_SCOPE_UNIVERSE ;
 struct net* dev_net (struct net_device*) ;
 int fib4_rules_early_flow_dissect (struct net*,struct sk_buff*,struct flowi4*,struct flow_keys*) ;
 int fib_combine_itag (scalar_t__*,struct fib_result*) ;
 int fib_info_nh_uses_dev (int ,struct net_device*) ;
 scalar_t__ fib_lookup (struct net*,struct flowi4*,struct fib_result*,int ) ;
 scalar_t__ l3mdev_master_ifindex_rcu (struct net_device*) ;
 int sock_net_uid (struct net*,int *) ;

__attribute__((used)) static int __fib_validate_source(struct sk_buff *skb, __be32 src, __be32 dst,
     u8 tos, int oif, struct net_device *dev,
     int rpf, struct in_device *idev, u32 *itag)
{
 struct net *net = dev_net(dev);
 struct flow_keys flkeys;
 int ret, no_addr;
 struct fib_result res;
 struct flowi4 fl4;
 bool dev_match;

 fl4.flowi4_oif = 0;
 fl4.flowi4_iif = l3mdev_master_ifindex_rcu(dev);
 if (!fl4.flowi4_iif)
  fl4.flowi4_iif = oif ? : LOOPBACK_IFINDEX;
 fl4.daddr = src;
 fl4.saddr = dst;
 fl4.flowi4_tos = tos;
 fl4.flowi4_scope = RT_SCOPE_UNIVERSE;
 fl4.flowi4_tun_key.tun_id = 0;
 fl4.flowi4_flags = 0;
 fl4.flowi4_uid = sock_net_uid(net, ((void*)0));

 no_addr = idev->ifa_list == ((void*)0);

 fl4.flowi4_mark = IN_DEV_SRC_VMARK(idev) ? skb->mark : 0;
 if (!fib4_rules_early_flow_dissect(net, skb, &fl4, &flkeys)) {
  fl4.flowi4_proto = 0;
  fl4.fl4_sport = 0;
  fl4.fl4_dport = 0;
 }

 if (fib_lookup(net, &fl4, &res, 0))
  goto last_resort;
 if (res.type != RTN_UNICAST &&
     (res.type != RTN_LOCAL || !IN_DEV_ACCEPT_LOCAL(idev)))
  goto e_inval;
 fib_combine_itag(itag, &res);

 dev_match = fib_info_nh_uses_dev(res.fi, dev);



 dev_match = dev_match || (res.type == RTN_LOCAL &&
      dev == net->loopback_dev);
 if (dev_match) {
  ret = FIB_RES_NHC(res)->nhc_scope >= RT_SCOPE_HOST;
  return ret;
 }
 if (no_addr)
  goto last_resort;
 if (rpf == 1)
  goto e_rpf;
 fl4.flowi4_oif = dev->ifindex;

 ret = 0;
 if (fib_lookup(net, &fl4, &res, FIB_LOOKUP_IGNORE_LINKSTATE) == 0) {
  if (res.type == RTN_UNICAST)
   ret = FIB_RES_NHC(res)->nhc_scope >= RT_SCOPE_HOST;
 }
 return ret;

last_resort:
 if (rpf)
  goto e_rpf;
 *itag = 0;
 return 0;

e_inval:
 return -EINVAL;
e_rpf:
 return -EXDEV;
}

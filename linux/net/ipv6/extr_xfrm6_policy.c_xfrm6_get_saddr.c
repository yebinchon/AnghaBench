
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int in6; } ;
typedef TYPE_1__ xfrm_address_t ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {struct net_device* dev; } ;


 int EHOSTUNREACH ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int dev_net (struct net_device*) ;
 int dst_release (struct dst_entry*) ;
 TYPE_5__* ip6_dst_idev (struct dst_entry*) ;
 int ipv6_dev_get_saddr (int ,struct net_device*,int *,int ,int *) ;
 struct dst_entry* xfrm6_dst_lookup (struct net*,int ,int,int *,TYPE_1__*,int ) ;

__attribute__((used)) static int xfrm6_get_saddr(struct net *net, int oif,
      xfrm_address_t *saddr, xfrm_address_t *daddr,
      u32 mark)
{
 struct dst_entry *dst;
 struct net_device *dev;

 dst = xfrm6_dst_lookup(net, 0, oif, ((void*)0), daddr, mark);
 if (IS_ERR(dst))
  return -EHOSTUNREACH;

 dev = ip6_dst_idev(dst)->dev;
 ipv6_dev_get_saddr(dev_net(dev), dev, &daddr->in6, 0, &saddr->in6);
 dst_release(dst);
 return 0;
}

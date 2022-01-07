
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;


 int __dcbnl_pg_setcfg (struct net_device*,struct nlmsghdr*,int ,struct nlattr**,struct sk_buff*,int ) ;

__attribute__((used)) static int dcbnl_pgtx_setcfg(struct net_device *netdev, struct nlmsghdr *nlh,
        u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 return __dcbnl_pg_setcfg(netdev, nlh, seq, tb, skb, 0);
}

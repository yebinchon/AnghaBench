
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
typedef int perm_addr ;
struct TYPE_2__ {int (* getpermhwaddr ) (struct net_device*,int *) ;} ;


 int DCB_ATTR_PERM_HWADDR ;
 int EOPNOTSUPP ;
 int MAX_ADDR_LEN ;
 int memset (int *,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;
 int stub1 (struct net_device*,int *) ;

__attribute__((used)) static int dcbnl_getperm_hwaddr(struct net_device *netdev, struct nlmsghdr *nlh,
    u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 u8 perm_addr[MAX_ADDR_LEN];

 if (!netdev->dcbnl_ops->getpermhwaddr)
  return -EOPNOTSUPP;

 memset(perm_addr, 0, sizeof(perm_addr));
 netdev->dcbnl_ops->getpermhwaddr(netdev, perm_addr);

 return nla_put(skb, DCB_ATTR_PERM_HWADDR, sizeof(perm_addr), perm_addr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RTNL_MAX_TYPE ;
 int __rtnl_newlink (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ;
 int kfree (struct nlattr**) ;
 struct nlattr** kmalloc_array (scalar_t__,int,int ) ;

__attribute__((used)) static int rtnl_newlink(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 struct nlattr **attr;
 int ret;

 attr = kmalloc_array(RTNL_MAX_TYPE + 1, sizeof(*attr), GFP_KERNEL);
 if (!attr)
  return -ENOMEM;

 ret = __rtnl_newlink(skb, nlh, attr, extack);
 kfree(attr);
 return ret;
}

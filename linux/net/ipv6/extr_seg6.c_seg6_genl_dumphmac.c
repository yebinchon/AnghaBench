
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int seg6_genl_dumphmac(struct sk_buff *skb, struct netlink_callback *cb)
{
 return -ENOTSUPP;
}

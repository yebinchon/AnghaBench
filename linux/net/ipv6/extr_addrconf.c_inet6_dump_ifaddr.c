
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
typedef enum addr_type_t { ____Placeholder_addr_type_t } addr_type_t ;


 int UNICAST_ADDR ;
 int inet6_dump_addr (struct sk_buff*,struct netlink_callback*,int) ;

__attribute__((used)) static int inet6_dump_ifaddr(struct sk_buff *skb, struct netlink_callback *cb)
{
 enum addr_type_t type = UNICAST_ADDR;

 return inet6_dump_addr(skb, cb, type);
}

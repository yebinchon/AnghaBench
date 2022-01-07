
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int ctnetlink_dump_list (struct sk_buff*,struct netlink_callback*,int) ;

__attribute__((used)) static int
ctnetlink_dump_dying(struct sk_buff *skb, struct netlink_callback *cb)
{
 return ctnetlink_dump_list(skb, cb, 1);
}

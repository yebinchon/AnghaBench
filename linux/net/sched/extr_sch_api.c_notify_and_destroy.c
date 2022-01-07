
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;


 int qdisc_notify (struct net*,struct sk_buff*,struct nlmsghdr*,int ,struct Qdisc*,struct Qdisc*) ;
 int qdisc_put (struct Qdisc*) ;

__attribute__((used)) static void notify_and_destroy(struct net *net, struct sk_buff *skb,
          struct nlmsghdr *n, u32 clid,
          struct Qdisc *old, struct Qdisc *new)
{
 if (new || old)
  qdisc_notify(net, skb, n, clid, old, new);

 if (old)
  qdisc_put(old);
}

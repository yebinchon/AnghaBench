
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int netlink_broadcast_filtered (struct sock*,struct sk_buff*,int ,int ,int ,int *,int *) ;

int netlink_broadcast(struct sock *ssk, struct sk_buff *skb, u32 portid,
        u32 group, gfp_t allocation)
{
 return netlink_broadcast_filtered(ssk, skb, portid, group, allocation,
  ((void*)0), ((void*)0));
}

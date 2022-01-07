
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ ifindex; } ;


 int TC_ACT_SHOT ;
 int bpf_clone_redirect (struct __sk_buff*,scalar_t__,int ) ;

int _clone_redirect_xmit(struct __sk_buff *skb)
{
 bpf_clone_redirect(skb, skb->ifindex + 1, 0);
 return TC_ACT_SHOT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ hard_header_len; scalar_t__ mtu; } ;


 scalar_t__ SKB_MAX_ALLOC ;

__attribute__((used)) static u32 __bpf_skb_max_len(const struct sk_buff *skb)
{
 return skb->dev ? skb->dev->mtu + skb->dev->hard_header_len :
     SKB_MAX_ALLOC;
}

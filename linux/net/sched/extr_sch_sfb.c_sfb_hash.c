
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t* hashes; } ;


 TYPE_1__* sfb_skb_cb (struct sk_buff const*) ;

__attribute__((used)) static u32 sfb_hash(const struct sk_buff *skb, u32 slot)
{
 return sfb_skb_cb(skb)->hashes[slot];
}

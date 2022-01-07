
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int cb; } ;
struct br_input_skb_cb {int dummy; } ;
struct TYPE_2__ {int frag_max_size; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int memcpy (int ,struct br_input_skb_cb const*,int) ;

__attribute__((used)) static void br_skb_cb_restore(struct sk_buff *skb,
         const struct br_input_skb_cb *cb,
         u16 fragsz)
{
 memcpy(skb->cb, cb, sizeof(*cb));
 BR_INPUT_SKB_CB(skb)->frag_max_size = fragsz;
}

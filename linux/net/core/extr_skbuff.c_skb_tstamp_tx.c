
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int sk; } ;


 int SCM_TSTAMP_SND ;
 void __skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*,int ,int ) ;

void skb_tstamp_tx(struct sk_buff *orig_skb,
     struct skb_shared_hwtstamps *hwtstamps)
{
 return __skb_tstamp_tx(orig_skb, hwtstamps, orig_skb->sk,
          SCM_TSTAMP_SND);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ dev; } ;


 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static inline void ip_vs_drop_early_demux_sk(struct sk_buff *skb)
{



 if (skb->dev)
  skb_orphan(skb);
}

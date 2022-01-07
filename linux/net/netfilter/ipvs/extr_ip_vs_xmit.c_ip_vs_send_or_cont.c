
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int ipvs_property; } ;
struct ip_vs_conn {int flags; TYPE_1__* ipvs; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int net; } ;


 int IP_VS_CONN_F_NFCT ;
 int NF_ACCEPT ;
 int NF_HOOK (int,int ,int ,int *,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_LOCAL_OUT ;
 int NF_STOLEN ;
 int dst_output ;
 int ip_vs_drop_early_demux_sk (struct sk_buff*) ;
 int ip_vs_notrack (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_forward_csum (struct sk_buff*) ;

__attribute__((used)) static inline int ip_vs_send_or_cont(int pf, struct sk_buff *skb,
         struct ip_vs_conn *cp, int local)
{
 int ret = NF_STOLEN;

 skb->ipvs_property = 1;
 if (likely(!(cp->flags & IP_VS_CONN_F_NFCT)))
  ip_vs_notrack(skb);
 if (!local) {
  ip_vs_drop_early_demux_sk(skb);
  skb_forward_csum(skb);
  NF_HOOK(pf, NF_INET_LOCAL_OUT, cp->ipvs->net, ((void*)0), skb,
   ((void*)0), skb_dst(skb)->dev, dst_output);
 } else
  ret = NF_ACCEPT;
 return ret;
}

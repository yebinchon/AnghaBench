
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int ipvs_property; } ;
struct ip_vs_conn {int flags; scalar_t__ vport; scalar_t__ dport; TYPE_1__* ipvs; int daddr; int vaddr; int af; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int net; } ;


 int IP_VS_CONN_F_NFCT ;
 int NF_ACCEPT ;
 int NF_HOOK (int,int ,int ,int *,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_LOCAL_OUT ;
 int NF_STOLEN ;
 int dst_output ;
 int ip_vs_addr_equal (int ,int *,int *) ;
 int ip_vs_drop_early_demux_sk (struct sk_buff*) ;
 int ip_vs_notrack (struct sk_buff*) ;
 int ip_vs_update_conntrack (struct sk_buff*,struct ip_vs_conn*,int) ;
 scalar_t__ likely (int) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_forward_csum (struct sk_buff*) ;

__attribute__((used)) static inline int ip_vs_nat_send_or_cont(int pf, struct sk_buff *skb,
      struct ip_vs_conn *cp, int local)
{
 int ret = NF_STOLEN;

 skb->ipvs_property = 1;
 if (likely(!(cp->flags & IP_VS_CONN_F_NFCT)))
  ip_vs_notrack(skb);
 else
  ip_vs_update_conntrack(skb, cp, 1);




 if (!local || cp->vport != cp->dport ||
     !ip_vs_addr_equal(cp->af, &cp->vaddr, &cp->daddr))
  ip_vs_drop_early_demux_sk(skb);

 if (!local) {
  skb_forward_csum(skb);
  NF_HOOK(pf, NF_INET_LOCAL_OUT, cp->ipvs->net, ((void*)0), skb,
   ((void*)0), skb_dst(skb)->dev, dst_output);
 } else
  ret = NF_ACCEPT;

 return ret;
}

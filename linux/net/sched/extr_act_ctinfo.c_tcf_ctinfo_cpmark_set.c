
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ctinfo_params {int cpmarkmask; } ;
struct tcf_ctinfo {int stats_cpmark_set; } ;
struct sk_buff {int mark; } ;
struct nf_conn {int mark; } ;



__attribute__((used)) static void tcf_ctinfo_cpmark_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
      struct tcf_ctinfo_params *cp,
      struct sk_buff *skb)
{
 ca->stats_cpmark_set++;
 skb->mark = ct->mark & cp->cpmarkmask;
}

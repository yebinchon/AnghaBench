
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_kstats {int outbps; int inbps; int outpps; int inpps; int cps; int outbytes; int inbytes; int outpkts; int inpkts; int conns; } ;


 int EMSGSIZE ;
 int IPVS_STATS_ATTR_CONNS ;
 int IPVS_STATS_ATTR_CPS ;
 int IPVS_STATS_ATTR_INBPS ;
 int IPVS_STATS_ATTR_INBYTES ;
 int IPVS_STATS_ATTR_INPKTS ;
 int IPVS_STATS_ATTR_INPPS ;
 int IPVS_STATS_ATTR_OUTBPS ;
 int IPVS_STATS_ATTR_OUTBYTES ;
 int IPVS_STATS_ATTR_OUTPKTS ;
 int IPVS_STATS_ATTR_OUTPPS ;
 int IPVS_STATS_ATTR_PAD ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_stats64(struct sk_buff *skb, int container_type,
       struct ip_vs_kstats *kstats)
{
 struct nlattr *nl_stats = nla_nest_start_noflag(skb, container_type);

 if (!nl_stats)
  return -EMSGSIZE;

 if (nla_put_u64_64bit(skb, IPVS_STATS_ATTR_CONNS, kstats->conns,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_INPKTS, kstats->inpkts,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_OUTPKTS, kstats->outpkts,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_INBYTES, kstats->inbytes,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_OUTBYTES, kstats->outbytes,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_CPS, kstats->cps,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_INPPS, kstats->inpps,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_OUTPPS, kstats->outpps,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_INBPS, kstats->inbps,
         IPVS_STATS_ATTR_PAD) ||
     nla_put_u64_64bit(skb, IPVS_STATS_ATTR_OUTBPS, kstats->outbps,
         IPVS_STATS_ATTR_PAD))
  goto nla_put_failure;
 nla_nest_end(skb, nl_stats);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_stats);
 return -EMSGSIZE;
}

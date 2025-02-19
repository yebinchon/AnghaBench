
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conn_tstamp {scalar_t__ start; scalar_t__ stop; } ;
struct nf_conn {int dummy; } ;


 int CTA_TIMESTAMP ;
 int CTA_TIMESTAMP_PAD ;
 int CTA_TIMESTAMP_START ;
 int CTA_TIMESTAMP_STOP ;
 int cpu_to_be64 (scalar_t__) ;
 struct nf_conn_tstamp* nf_conn_tstamp_find (struct nf_conn const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int
ctnetlink_dump_timestamp(struct sk_buff *skb, const struct nf_conn *ct)
{
 struct nlattr *nest_count;
 const struct nf_conn_tstamp *tstamp;

 tstamp = nf_conn_tstamp_find(ct);
 if (!tstamp)
  return 0;

 nest_count = nla_nest_start(skb, CTA_TIMESTAMP);
 if (!nest_count)
  goto nla_put_failure;

 if (nla_put_be64(skb, CTA_TIMESTAMP_START, cpu_to_be64(tstamp->start),
    CTA_TIMESTAMP_PAD) ||
     (tstamp->stop != 0 && nla_put_be64(skb, CTA_TIMESTAMP_STOP,
            cpu_to_be64(tstamp->stop),
            CTA_TIMESTAMP_PAD)))
  goto nla_put_failure;
 nla_nest_end(skb, nest_count);

 return 0;

nla_put_failure:
 return -1;
}

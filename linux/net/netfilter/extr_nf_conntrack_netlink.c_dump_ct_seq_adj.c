
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_ct_seqadj {int offset_after; int offset_before; int correction_pos; } ;


 int CTA_SEQADJ_CORRECTION_POS ;
 int CTA_SEQADJ_OFFSET_AFTER ;
 int CTA_SEQADJ_OFFSET_BEFORE ;
 int htonl (int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
dump_ct_seq_adj(struct sk_buff *skb, const struct nf_ct_seqadj *seq, int type)
{
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, type);
 if (!nest_parms)
  goto nla_put_failure;

 if (nla_put_be32(skb, CTA_SEQADJ_CORRECTION_POS,
    htonl(seq->correction_pos)) ||
     nla_put_be32(skb, CTA_SEQADJ_OFFSET_BEFORE,
    htonl(seq->offset_before)) ||
     nla_put_be32(skb, CTA_SEQADJ_OFFSET_AFTER,
    htonl(seq->offset_after)))
  goto nla_put_failure;

 nla_nest_end(skb, nest_parms);

 return 0;

nla_put_failure:
 return -1;
}

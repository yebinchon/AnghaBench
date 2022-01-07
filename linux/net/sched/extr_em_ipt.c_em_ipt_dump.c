
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_ematch {scalar_t__ data; } ;
struct sk_buff {int dummy; } ;
struct em_ipt_match {int match_data; TYPE_1__* match; int nfproto; int hook; } ;
struct TYPE_2__ {int matchsize; scalar_t__ usersize; int revision; int name; } ;


 int EMSGSIZE ;
 int TCA_EM_IPT_HOOK ;
 int TCA_EM_IPT_MATCH_DATA ;
 int TCA_EM_IPT_MATCH_NAME ;
 int TCA_EM_IPT_MATCH_REVISION ;
 int TCA_EM_IPT_NFPROTO ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int em_ipt_dump(struct sk_buff *skb, struct tcf_ematch *em)
{
 struct em_ipt_match *im = (void *)em->data;

 if (nla_put_string(skb, TCA_EM_IPT_MATCH_NAME, im->match->name) < 0)
  return -EMSGSIZE;
 if (nla_put_u32(skb, TCA_EM_IPT_HOOK, im->hook) < 0)
  return -EMSGSIZE;
 if (nla_put_u8(skb, TCA_EM_IPT_MATCH_REVISION, im->match->revision) < 0)
  return -EMSGSIZE;
 if (nla_put_u8(skb, TCA_EM_IPT_NFPROTO, im->nfproto) < 0)
  return -EMSGSIZE;
 if (nla_put(skb, TCA_EM_IPT_MATCH_DATA,
      im->match->usersize ?: im->match->matchsize,
      im->match_data) < 0)
  return -EMSGSIZE;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_l4proto {int (* to_nlattr ) (struct sk_buff*,struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn {int dummy; } ;


 int CTA_PROTOINFO ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int stub1 (struct sk_buff*,struct nlattr*,struct nf_conn*) ;

__attribute__((used)) static int ctnetlink_dump_protoinfo(struct sk_buff *skb, struct nf_conn *ct)
{
 const struct nf_conntrack_l4proto *l4proto;
 struct nlattr *nest_proto;
 int ret;

 l4proto = nf_ct_l4proto_find(nf_ct_protonum(ct));
 if (!l4proto->to_nlattr)
  return 0;

 nest_proto = nla_nest_start(skb, CTA_PROTOINFO);
 if (!nest_proto)
  goto nla_put_failure;

 ret = l4proto->to_nlattr(skb, nest_proto, ct);

 nla_nest_end(skb, nest_proto);

 return ret;

nla_put_failure:
 return -1;
}

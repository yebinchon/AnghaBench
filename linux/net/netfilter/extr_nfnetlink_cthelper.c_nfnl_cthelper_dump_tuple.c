
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int protonum; } ;
struct TYPE_4__ {int l3num; } ;
struct TYPE_6__ {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_helper {TYPE_3__ tuple; } ;


 int NFCTH_TUPLE ;
 int NFCTH_TUPLE_L3PROTONUM ;
 int NFCTH_TUPLE_L4PROTONUM ;
 int htons (int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
nfnl_cthelper_dump_tuple(struct sk_buff *skb,
    struct nf_conntrack_helper *helper)
{
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, NFCTH_TUPLE);
 if (nest_parms == ((void*)0))
  goto nla_put_failure;

 if (nla_put_be16(skb, NFCTH_TUPLE_L3PROTONUM,
    htons(helper->tuple.src.l3num)))
  goto nla_put_failure;

 if (nla_put_u8(skb, NFCTH_TUPLE_L4PROTONUM, helper->tuple.dst.protonum))
  goto nla_put_failure;

 nla_nest_end(skb, nest_parms);
 return 0;

nla_put_failure:
 return -1;
}

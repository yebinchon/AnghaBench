
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int classid; } ;
struct basic_filter {struct tcf_proto* tp; TYPE_1__ res; int ematches; int exts; } ;


 size_t TCA_BASIC_CLASSID ;
 size_t TCA_BASIC_EMATCHES ;
 int nla_get_u32 (struct nlattr*) ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_em_tree_validate (struct tcf_proto*,struct nlattr*,int *) ;
 int tcf_exts_validate (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int *,int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int basic_set_parms(struct net *net, struct tcf_proto *tp,
      struct basic_filter *f, unsigned long base,
      struct nlattr **tb,
      struct nlattr *est, bool ovr,
      struct netlink_ext_ack *extack)
{
 int err;

 err = tcf_exts_validate(net, tp, tb, est, &f->exts, ovr, 1, extack);
 if (err < 0)
  return err;

 err = tcf_em_tree_validate(tp, tb[TCA_BASIC_EMATCHES], &f->ematches);
 if (err < 0)
  return err;

 if (tb[TCA_BASIC_CLASSID]) {
  f->res.classid = nla_get_u32(tb[TCA_BASIC_CLASSID]);
  tcf_bind_filter(tp, &f->res, base);
 }

 f->tp = tp;
 return 0;
}

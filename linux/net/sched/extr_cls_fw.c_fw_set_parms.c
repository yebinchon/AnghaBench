
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {int root; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fw_head {int mask; } ;
struct TYPE_2__ {void* classid; } ;
struct fw_filter {int ifindex; TYPE_1__ res; int exts; } ;


 int EINVAL ;
 size_t TCA_FW_CLASSID ;
 size_t TCA_FW_INDEV ;
 size_t TCA_FW_MASK ;
 size_t TCA_RATE ;
 void* nla_get_u32 (struct nlattr*) ;
 struct fw_head* rtnl_dereference (int ) ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_change_indev (struct net*,struct nlattr*,struct netlink_ext_ack*) ;
 int tcf_exts_validate (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int *,int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int fw_set_parms(struct net *net, struct tcf_proto *tp,
   struct fw_filter *f, struct nlattr **tb,
   struct nlattr **tca, unsigned long base, bool ovr,
   struct netlink_ext_ack *extack)
{
 struct fw_head *head = rtnl_dereference(tp->root);
 u32 mask;
 int err;

 err = tcf_exts_validate(net, tp, tb, tca[TCA_RATE], &f->exts, ovr,
    1, extack);
 if (err < 0)
  return err;

 if (tb[TCA_FW_CLASSID]) {
  f->res.classid = nla_get_u32(tb[TCA_FW_CLASSID]);
  tcf_bind_filter(tp, &f->res, base);
 }

 if (tb[TCA_FW_INDEV]) {
  int ret;
  ret = tcf_change_indev(net, tb[TCA_FW_INDEV], extack);
  if (ret < 0)
   return ret;
  f->ifindex = ret;
 }

 err = -EINVAL;
 if (tb[TCA_FW_MASK]) {
  mask = nla_get_u32(tb[TCA_FW_MASK]);
  if (mask != head->mask)
   return err;
 } else if (head->mask != 0xFFFFFFFF)
  return err;

 return 0;
}

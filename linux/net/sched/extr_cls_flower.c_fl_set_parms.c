
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fl_flow_tmplt {int dummy; } ;
struct fl_flow_mask {int key; } ;
struct TYPE_2__ {int classid; } ;
struct cls_fl_filter {int key; int mkey; TYPE_1__ res; int exts; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t TCA_FLOWER_CLASSID ;
 int fl_mask_fits_tmplt (struct fl_flow_tmplt*,struct fl_flow_mask*) ;
 int fl_mask_update_range (struct fl_flow_mask*) ;
 int fl_set_key (struct net*,struct nlattr**,int *,int *,struct netlink_ext_ack*) ;
 int fl_set_masked_key (int *,int *,struct fl_flow_mask*) ;
 int nla_get_u32 (struct nlattr*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tcf_bind_filter (struct tcf_proto*,TYPE_1__*,unsigned long) ;
 int tcf_exts_validate (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int *,int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int fl_set_parms(struct net *net, struct tcf_proto *tp,
   struct cls_fl_filter *f, struct fl_flow_mask *mask,
   unsigned long base, struct nlattr **tb,
   struct nlattr *est, bool ovr,
   struct fl_flow_tmplt *tmplt, bool rtnl_held,
   struct netlink_ext_ack *extack)
{
 int err;

 err = tcf_exts_validate(net, tp, tb, est, &f->exts, ovr, rtnl_held,
    extack);
 if (err < 0)
  return err;

 if (tb[TCA_FLOWER_CLASSID]) {
  f->res.classid = nla_get_u32(tb[TCA_FLOWER_CLASSID]);
  if (!rtnl_held)
   rtnl_lock();
  tcf_bind_filter(tp, &f->res, base);
  if (!rtnl_held)
   rtnl_unlock();
 }

 err = fl_set_key(net, tb, &f->key, &mask->key, extack);
 if (err)
  return err;

 fl_mask_update_range(mask);
 fl_set_masked_key(&f->mkey, &f->key, mask);

 if (!fl_mask_fits_tmplt(tmplt, mask)) {
  NL_SET_ERR_MSG_MOD(extack, "Mask does not fit the template");
  return -EINVAL;
 }

 return 0;
}

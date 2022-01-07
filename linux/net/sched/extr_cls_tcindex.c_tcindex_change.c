
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcindex_filter_result {int dummy; } ;
struct tcindex_data {int dummy; } ;
struct tcf_proto {int root; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 int TCA_TCINDEX_MAX ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int pr_debug (char*,struct tcf_proto*,int ,struct nlattr**,void**,struct nlattr*,struct tcindex_data*,struct tcindex_filter_result*,void*) ;
 struct tcindex_data* rtnl_dereference (int ) ;
 int tcindex_policy ;
 int tcindex_set_parms (struct net*,struct tcf_proto*,unsigned long,int ,struct tcindex_data*,struct tcindex_filter_result*,struct nlattr**,struct nlattr*,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int
tcindex_change(struct net *net, struct sk_buff *in_skb,
        struct tcf_proto *tp, unsigned long base, u32 handle,
        struct nlattr **tca, void **arg, bool ovr,
        bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_TCINDEX_MAX + 1];
 struct tcindex_data *p = rtnl_dereference(tp->root);
 struct tcindex_filter_result *r = *arg;
 int err;

 pr_debug("tcindex_change(tp %p,handle 0x%08x,tca %p,arg %p),opt %p,"
     "p %p,r %p,*arg %p\n",
     tp, handle, tca, arg, opt, p, r, arg ? *arg : ((void*)0));

 if (!opt)
  return 0;

 err = nla_parse_nested_deprecated(tb, TCA_TCINDEX_MAX, opt,
       tcindex_policy, ((void*)0));
 if (err < 0)
  return err;

 return tcindex_set_parms(net, tp, base, handle, p, r, tb,
     tca[TCA_RATE], ovr, extack);
}

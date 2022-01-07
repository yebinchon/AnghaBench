
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_action {int order; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (struct tc_action*) ;
 int PTR_ERR (struct tc_action*) ;
 int TCA_ACT_MAX_PRIO ;
 int nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,int *,struct netlink_ext_ack*) ;
 int tcf_action_destroy (struct tc_action**,int) ;
 scalar_t__ tcf_action_fill_size (struct tc_action*) ;
 size_t tcf_action_full_attrs_size (size_t) ;
 struct tc_action* tcf_action_init_1 (struct net*,struct tcf_proto*,struct nlattr*,struct nlattr*,char*,int,int,int,struct netlink_ext_ack*) ;

int tcf_action_init(struct net *net, struct tcf_proto *tp, struct nlattr *nla,
      struct nlattr *est, char *name, int ovr, int bind,
      struct tc_action *actions[], size_t *attr_size,
      bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
 struct tc_action *act;
 size_t sz = 0;
 int err;
 int i;

 err = nla_parse_nested_deprecated(tb, TCA_ACT_MAX_PRIO, nla, ((void*)0),
       extack);
 if (err < 0)
  return err;

 for (i = 1; i <= TCA_ACT_MAX_PRIO && tb[i]; i++) {
  act = tcf_action_init_1(net, tp, tb[i], est, name, ovr, bind,
     rtnl_held, extack);
  if (IS_ERR(act)) {
   err = PTR_ERR(act);
   goto err;
  }
  act->order = i;
  sz += tcf_action_fill_size(act);

  actions[i - 1] = act;
 }

 *attr_size = tcf_action_full_attrs_size(sz);
 return i - 1;

err:
 tcf_action_destroy(actions, bind);
 return err;
}

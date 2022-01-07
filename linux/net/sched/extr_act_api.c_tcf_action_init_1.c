
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_cookie {struct tc_cookie* data; } ;
struct tc_action_ops {int (* init ) (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ;int owner; } ;
struct tc_action {int goto_chain; int tcfa_action; int act_cookie; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct tc_action* ERR_PTR (int) ;
 int IFNAMSIZ ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_ACT_COOKIE ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 size_t TCA_ACT_OPTIONS ;
 scalar_t__ TC_ACT_EXT_CMP (int ,int ) ;
 int TC_ACT_GOTO_CHAIN ;
 int kfree (struct tc_cookie*) ;
 int module_put (int ) ;
 struct tc_cookie* nla_memdup_cookie (struct nlattr**) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 int rcu_access_pointer (int ) ;
 int request_module (char*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strlcpy (char*,char*,int) ;
 int stub1 (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ;
 int stub2 (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ;
 struct tc_action_ops* tc_lookup_action_n (char*) ;
 int tcf_action_destroy_1 (struct tc_action*,int) ;
 int tcf_action_policy ;
 int tcf_set_action_cookie (int *,struct tc_cookie*) ;

struct tc_action *tcf_action_init_1(struct net *net, struct tcf_proto *tp,
        struct nlattr *nla, struct nlattr *est,
        char *name, int ovr, int bind,
        bool rtnl_held,
        struct netlink_ext_ack *extack)
{
 struct tc_action *a;
 struct tc_action_ops *a_o;
 struct tc_cookie *cookie = ((void*)0);
 char act_name[IFNAMSIZ];
 struct nlattr *tb[TCA_ACT_MAX + 1];
 struct nlattr *kind;
 int err;

 if (name == ((void*)0)) {
  err = nla_parse_nested_deprecated(tb, TCA_ACT_MAX, nla,
        tcf_action_policy, extack);
  if (err < 0)
   goto err_out;
  err = -EINVAL;
  kind = tb[TCA_ACT_KIND];
  if (!kind) {
   NL_SET_ERR_MSG(extack, "TC action kind must be specified");
   goto err_out;
  }
  if (nla_strlcpy(act_name, kind, IFNAMSIZ) >= IFNAMSIZ) {
   NL_SET_ERR_MSG(extack, "TC action name too long");
   goto err_out;
  }
  if (tb[TCA_ACT_COOKIE]) {
   cookie = nla_memdup_cookie(tb);
   if (!cookie) {
    NL_SET_ERR_MSG(extack, "No memory to generate TC cookie");
    err = -ENOMEM;
    goto err_out;
   }
  }
 } else {
  if (strlcpy(act_name, name, IFNAMSIZ) >= IFNAMSIZ) {
   NL_SET_ERR_MSG(extack, "TC action name too long");
   err = -EINVAL;
   goto err_out;
  }
 }

 a_o = tc_lookup_action_n(act_name);
 if (a_o == ((void*)0)) {
  NL_SET_ERR_MSG(extack, "Failed to load TC action module");
  err = -ENOENT;
  goto err_out;
 }


 if (name == ((void*)0))
  err = a_o->init(net, tb[TCA_ACT_OPTIONS], est, &a, ovr, bind,
    rtnl_held, tp, extack);
 else
  err = a_o->init(net, nla, est, &a, ovr, bind, rtnl_held,
    tp, extack);
 if (err < 0)
  goto err_mod;

 if (!name && tb[TCA_ACT_COOKIE])
  tcf_set_action_cookie(&a->act_cookie, cookie);





 if (err != ACT_P_CREATED)
  module_put(a_o->owner);

 if (TC_ACT_EXT_CMP(a->tcfa_action, TC_ACT_GOTO_CHAIN) &&
     !rcu_access_pointer(a->goto_chain)) {
  tcf_action_destroy_1(a, bind);
  NL_SET_ERR_MSG(extack, "can't use goto chain with NULL chain");
  return ERR_PTR(-EINVAL);
 }

 return a;

err_mod:
 module_put(a_o->owner);
err_out:
 if (cookie) {
  kfree(cookie->data);
  kfree(cookie);
 }
 return ERR_PTR(err);
}

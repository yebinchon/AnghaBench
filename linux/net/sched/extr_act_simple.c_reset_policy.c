
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_defact {int tcf_lock; int tcfd_defdata; } ;
struct tcf_chain {int dummy; } ;
struct tc_defact {int action; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int SIMP_MAX_DATA ;
 int memset (int ,int ,int ) ;
 int nla_strlcpy (int ,struct nlattr const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 struct tcf_chain* tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 struct tcf_defact* to_defact (struct tc_action*) ;

__attribute__((used)) static int reset_policy(struct tc_action *a, const struct nlattr *defdata,
   struct tc_defact *p, struct tcf_proto *tp,
   struct netlink_ext_ack *extack)
{
 struct tcf_chain *goto_ch = ((void*)0);
 struct tcf_defact *d;
 int err;

 err = tcf_action_check_ctrlact(p->action, tp, &goto_ch, extack);
 if (err < 0)
  return err;
 d = to_defact(a);
 spin_lock_bh(&d->tcf_lock);
 goto_ch = tcf_action_set_ctrlact(a, p->action, goto_ch);
 memset(d->tcfd_defdata, 0, SIMP_MAX_DATA);
 nla_strlcpy(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
 spin_unlock_bh(&d->tcf_lock);
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
 return 0;
}

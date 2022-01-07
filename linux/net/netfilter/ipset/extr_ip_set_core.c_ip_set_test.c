
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_set_adt_opt {scalar_t__ dim; scalar_t__ family; int cmdflags; } ;
struct ip_set {scalar_t__ family; TYPE_2__* type; int lock; TYPE_1__* variant; int name; } ;
typedef int ip_set_id_t ;
struct TYPE_4__ {scalar_t__ dimension; int features; } ;
struct TYPE_3__ {int (* kadt ) (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int ,struct ip_set_adt_opt*) ;} ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOTEMPTY ;
 int IPSET_ADD ;
 int IPSET_FLAG_RETURN_NOMATCH ;
 int IPSET_TEST ;
 int IPSET_TYPE_NOMATCH ;
 scalar_t__ NFPROTO_UNSPEC ;
 struct ip_set* ip_set_rcu_get (int ,int ) ;
 int pr_debug (char*,...) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int ,struct ip_set_adt_opt*) ;
 int stub2 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int ,struct ip_set_adt_opt*) ;
 int xt_net (struct xt_action_param const*) ;

int
ip_set_test(ip_set_id_t index, const struct sk_buff *skb,
     const struct xt_action_param *par, struct ip_set_adt_opt *opt)
{
 struct ip_set *set = ip_set_rcu_get(xt_net(par), index);
 int ret = 0;

 BUG_ON(!set);
 pr_debug("set %s, index %u\n", set->name, index);

 if (opt->dim < set->type->dimension ||
     !(opt->family == set->family || set->family == NFPROTO_UNSPEC))
  return 0;

 rcu_read_lock_bh();
 ret = set->variant->kadt(set, skb, par, IPSET_TEST, opt);
 rcu_read_unlock_bh();

 if (ret == -EAGAIN) {

  pr_debug("element must be completed, ADD is triggered\n");
  spin_lock_bh(&set->lock);
  set->variant->kadt(set, skb, par, IPSET_ADD, opt);
  spin_unlock_bh(&set->lock);
  ret = 1;
 } else {

  if ((opt->cmdflags & IPSET_FLAG_RETURN_NOMATCH) &&
      (set->type->features & IPSET_TYPE_NOMATCH) &&
      (ret > 0 || ret == -ENOTEMPTY))
   ret = -ret;
 }


 return (ret < 0 ? 0 : ret);
}

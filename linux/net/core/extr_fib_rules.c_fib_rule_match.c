
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tun_id; } ;
struct flowi {scalar_t__ flowi_iif; scalar_t__ flowi_oif; int flowi_mark; int flowi_uid; TYPE_1__ flowi_tun_key; } ;
struct fib_rules_ops {int (* match ) (struct fib_rule*,struct flowi*,int) ;} ;
struct TYPE_4__ {int end; int start; } ;
struct fib_rule {scalar_t__ iifindex; scalar_t__ oifindex; int mark; int mark_mask; scalar_t__ tun_id; int flags; TYPE_2__ uid_range; int fr_net; scalar_t__ l3mdev; } ;
struct fib_lookup_arg {int dummy; } ;


 int FIB_RULE_INVERT ;
 int l3mdev_fib_rule_match (int ,struct flowi*,struct fib_lookup_arg*) ;
 int stub1 (struct fib_rule*,struct flowi*,int) ;
 scalar_t__ uid_gt (int ,int ) ;
 scalar_t__ uid_lt (int ,int ) ;

__attribute__((used)) static int fib_rule_match(struct fib_rule *rule, struct fib_rules_ops *ops,
     struct flowi *fl, int flags,
     struct fib_lookup_arg *arg)
{
 int ret = 0;

 if (rule->iifindex && (rule->iifindex != fl->flowi_iif))
  goto out;

 if (rule->oifindex && (rule->oifindex != fl->flowi_oif))
  goto out;

 if ((rule->mark ^ fl->flowi_mark) & rule->mark_mask)
  goto out;

 if (rule->tun_id && (rule->tun_id != fl->flowi_tun_key.tun_id))
  goto out;

 if (rule->l3mdev && !l3mdev_fib_rule_match(rule->fr_net, fl, arg))
  goto out;

 if (uid_lt(fl->flowi_uid, rule->uid_range.start) ||
     uid_gt(fl->flowi_uid, rule->uid_range.end))
  goto out;

 ret = ops->match(rule, fl, flags);
out:
 return (rule->flags & FIB_RULE_INVERT) ? !ret : ret;
}

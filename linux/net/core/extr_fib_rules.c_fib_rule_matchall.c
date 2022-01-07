
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; } ;
struct fib_rule {int suppress_ifgroup; int suppress_prefixlen; int dport_range; int sport_range; TYPE_1__ uid_range; scalar_t__ flags; scalar_t__ tun_id; scalar_t__ mark; scalar_t__ oifindex; scalar_t__ iifindex; } ;
struct TYPE_4__ {int end; int start; } ;


 TYPE_2__ fib_kuid_range_unset ;
 scalar_t__ fib_rule_port_range_set (int *) ;
 int uid_eq (int ,int ) ;

bool fib_rule_matchall(const struct fib_rule *rule)
{
 if (rule->iifindex || rule->oifindex || rule->mark || rule->tun_id ||
     rule->flags)
  return 0;
 if (rule->suppress_ifgroup != -1 || rule->suppress_prefixlen != -1)
  return 0;
 if (!uid_eq(rule->uid_range.start, fib_kuid_range_unset.start) ||
     !uid_eq(rule->uid_range.end, fib_kuid_range_unset.end))
  return 0;
 if (fib_rule_port_range_set(&rule->sport_range))
  return 0;
 if (fib_rule_port_range_set(&rule->dport_range))
  return 0;
 return 1;
}

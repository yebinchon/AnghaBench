
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib_has_custom_rules; scalar_t__ fib_rules_require_fldissect; int fib_num_tclassid_users; } ;
struct net {TYPE_1__ ipv4; } ;
struct fib_rule {struct net* fr_net; } ;
struct fib4_rule {scalar_t__ tclassid; } ;


 scalar_t__ fib_rule_requires_fldissect (struct fib_rule*) ;
 int fib_unmerge (struct net*) ;

__attribute__((used)) static int fib4_rule_delete(struct fib_rule *rule)
{
 struct net *net = rule->fr_net;
 int err;


 err = fib_unmerge(net);
 if (err)
  goto errout;





 net->ipv4.fib_has_custom_rules = 1;

 if (net->ipv4.fib_rules_require_fldissect &&
     fib_rule_requires_fldissect(rule))
  net->ipv4.fib_rules_require_fldissect--;
errout:
 return err;
}

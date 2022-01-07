
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setuid_ruleset {int dummy; } ;
typedef int kuid_t ;
typedef enum sid_policy_type { ____Placeholder_sid_policy_type } sid_policy_type ;


 int SIDPOL_DEFAULT ;
 int _setuid_policy_lookup (struct setuid_ruleset*,int ,int ) ;
 struct setuid_ruleset* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int safesetid_setuid_rules ;

__attribute__((used)) static enum sid_policy_type setuid_policy_lookup(kuid_t src, kuid_t dst)
{
 enum sid_policy_type result = SIDPOL_DEFAULT;
 struct setuid_ruleset *pol;

 rcu_read_lock();
 pol = rcu_dereference(safesetid_setuid_rules);
 if (pol)
  result = _setuid_policy_lookup(pol, src, dst);
 rcu_read_unlock();
 return result;
}

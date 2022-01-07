
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setuid_ruleset {int rcu; } ;


 int __release_ruleset ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static void release_ruleset(struct setuid_ruleset *pol)
{
 call_rcu(&pol->rcu, __release_ruleset);
}

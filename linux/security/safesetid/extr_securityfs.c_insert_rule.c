
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setuid_ruleset {int rules; } ;
struct setuid_rule {int src_uid; int next; } ;


 int __kuid_val (int ) ;
 int hash_add (int ,int *,int ) ;

__attribute__((used)) static void insert_rule(struct setuid_ruleset *pol, struct setuid_rule *rule)
{
 hash_add(pol->rules, &rule->next, __kuid_val(rule->src_uid));
}

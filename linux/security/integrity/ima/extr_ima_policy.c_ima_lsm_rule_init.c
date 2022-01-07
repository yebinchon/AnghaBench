
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int substring_t ;
struct ima_rule_entry {TYPE_1__* lsm; } ;
struct TYPE_2__ {int type; int args_p; scalar_t__ rule; } ;


 int Audit_equal ;
 int EINVAL ;
 int ENOMEM ;
 int kfree (int ) ;
 int match_strdup (int *) ;
 int security_filter_rule_init (int,int ,int ,scalar_t__*) ;

__attribute__((used)) static int ima_lsm_rule_init(struct ima_rule_entry *entry,
        substring_t *args, int lsm_rule, int audit_type)
{
 int result;

 if (entry->lsm[lsm_rule].rule)
  return -EINVAL;

 entry->lsm[lsm_rule].args_p = match_strdup(args);
 if (!entry->lsm[lsm_rule].args_p)
  return -ENOMEM;

 entry->lsm[lsm_rule].type = audit_type;
 result = security_filter_rule_init(entry->lsm[lsm_rule].type,
        Audit_equal,
        entry->lsm[lsm_rule].args_p,
        &entry->lsm[lsm_rule].rule);
 if (!entry->lsm[lsm_rule].rule) {
  kfree(entry->lsm[lsm_rule].args_p);
  return -EINVAL;
 }

 return result;
}

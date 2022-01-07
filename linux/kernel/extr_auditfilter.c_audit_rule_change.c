
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exe; } ;
struct audit_entry {TYPE_1__ rule; } ;




 int EINVAL ;
 int IS_ERR (struct audit_entry*) ;
 int PTR_ERR (struct audit_entry*) ;
 int WARN_ON (int) ;
 int audit_add_rule (struct audit_entry*) ;
 struct audit_entry* audit_data_to_entry (void*,size_t) ;
 int audit_del_rule (struct audit_entry*) ;
 int audit_free_rule (struct audit_entry*) ;
 int audit_log_rule_change (char*,TYPE_1__*,int) ;
 int audit_remove_mark (scalar_t__) ;

int audit_rule_change(int type, int seq, void *data, size_t datasz)
{
 int err = 0;
 struct audit_entry *entry;

 switch (type) {
 case 129:
  entry = audit_data_to_entry(data, datasz);
  if (IS_ERR(entry))
   return PTR_ERR(entry);
  err = audit_add_rule(entry);
  audit_log_rule_change("add_rule", &entry->rule, !err);
  break;
 case 128:
  entry = audit_data_to_entry(data, datasz);
  if (IS_ERR(entry))
   return PTR_ERR(entry);
  err = audit_del_rule(entry);
  audit_log_rule_change("remove_rule", &entry->rule, !err);
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 if (err || type == 128) {
  if (entry->rule.exe)
   audit_remove_mark(entry->rule.exe);
  audit_free_rule(entry);
 }

 return err;
}

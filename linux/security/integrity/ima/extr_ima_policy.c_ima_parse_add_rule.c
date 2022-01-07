
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_rule_entry {int list; } ;
typedef int ssize_t ;


 int AUDIT_INTEGRITY_STATUS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ima_parse_rule (char*,struct ima_rule_entry*) ;
 int ima_temp_rules ;
 int integrity_audit_msg (int ,int *,int *,char const*,char*,int,int) ;
 int kfree (struct ima_rule_entry*) ;
 struct ima_rule_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int strspn (char*,char*) ;

ssize_t ima_parse_add_rule(char *rule)
{
 static const char op[] = "update_policy";
 char *p;
 struct ima_rule_entry *entry;
 ssize_t result, len;
 int audit_info = 0;

 p = strsep(&rule, "\n");
 len = strlen(p) + 1;
 p += strspn(p, " \t");

 if (*p == '#' || *p == '\0')
  return len;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0),
        ((void*)0), op, "-ENOMEM", -ENOMEM, audit_info);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&entry->list);

 result = ima_parse_rule(p, entry);
 if (result) {
  kfree(entry);
  integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0),
        ((void*)0), op, "invalid-policy", result,
        audit_info);
  return result;
 }

 list_add_tail(&entry->list, &ima_temp_rules);

 return len;
}

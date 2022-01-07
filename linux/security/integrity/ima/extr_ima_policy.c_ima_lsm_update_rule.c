
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_rule_entry {int list; } ;


 int ENOMEM ;
 struct ima_rule_entry* ima_lsm_copy_rule (struct ima_rule_entry*) ;
 int ima_lsm_free_rule (struct ima_rule_entry*) ;
 int list_replace_rcu (int *,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int ima_lsm_update_rule(struct ima_rule_entry *entry)
{
 struct ima_rule_entry *nentry;

 nentry = ima_lsm_copy_rule(entry);
 if (!nentry)
  return -ENOMEM;

 list_replace_rcu(&entry->list, &nentry->list);
 synchronize_rcu();
 ima_lsm_free_rule(entry);

 return 0;
}

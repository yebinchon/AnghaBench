
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct audit_watch {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_3__ {int listnr; unsigned long long prio; int flags; int list; struct audit_tree* tree; struct audit_watch* watch; } ;
struct audit_entry {int list; TYPE_1__ rule; } ;



 int AUDIT_FILTER_EXIT ;

 int AUDIT_FILTER_PREPEND ;

 int EEXIST ;
 int audit_add_tree_rule (TYPE_1__*) ;
 int audit_add_watch (TYPE_1__*,struct list_head**) ;
 int audit_filter_mutex ;
 struct audit_entry* audit_find_rule (struct audit_entry*,struct list_head**) ;
 int audit_match_signal (struct audit_entry*) ;
 int audit_n_rules ;
 int audit_put_tree (struct audit_tree*) ;
 int * audit_rules_list ;
 int audit_signals ;
 int list_add (int *,int *) ;
 int list_add_rcu (int *,struct list_head*) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long long prio_high ;
 unsigned long long prio_low ;

__attribute__((used)) static inline int audit_add_rule(struct audit_entry *entry)
{
 struct audit_entry *e;
 struct audit_watch *watch = entry->rule.watch;
 struct audit_tree *tree = entry->rule.tree;
 struct list_head *list;
 int err = 0;
 mutex_lock(&audit_filter_mutex);
 e = audit_find_rule(entry, &list);
 if (e) {
  mutex_unlock(&audit_filter_mutex);
  err = -EEXIST;

  if (tree)
   audit_put_tree(tree);
  return err;
 }

 if (watch) {

  err = audit_add_watch(&entry->rule, &list);
  if (err) {
   mutex_unlock(&audit_filter_mutex);




   if (tree)
    audit_put_tree(tree);
   return err;
  }
 }
 if (tree) {
  err = audit_add_tree_rule(&entry->rule);
  if (err) {
   mutex_unlock(&audit_filter_mutex);
   return err;
  }
 }

 entry->rule.prio = ~0ULL;
 if (entry->rule.listnr == AUDIT_FILTER_EXIT) {
  if (entry->rule.flags & AUDIT_FILTER_PREPEND)
   entry->rule.prio = ++prio_high;
  else
   entry->rule.prio = --prio_low;
 }

 if (entry->rule.flags & AUDIT_FILTER_PREPEND) {
  list_add(&entry->rule.list,
    &audit_rules_list[entry->rule.listnr]);
  list_add_rcu(&entry->list, list);
  entry->rule.flags &= ~AUDIT_FILTER_PREPEND;
 } else {
  list_add_tail(&entry->rule.list,
         &audit_rules_list[entry->rule.listnr]);
  list_add_tail_rcu(&entry->list, list);
 }







 mutex_unlock(&audit_filter_mutex);

 return err;
}

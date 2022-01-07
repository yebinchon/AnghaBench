
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_4__ {int listnr; int list; scalar_t__ exe; struct audit_tree* tree; scalar_t__ watch; } ;
struct audit_entry {int rcu; TYPE_1__ rule; int list; } ;





 int ENOENT ;
 int audit_filter_mutex ;
 struct audit_entry* audit_find_rule (struct audit_entry*,struct list_head**) ;
 int audit_free_rule_rcu ;
 int audit_match_signal (struct audit_entry*) ;
 int audit_n_rules ;
 int audit_put_tree (struct audit_tree*) ;
 int audit_remove_mark_rule (TYPE_1__*) ;
 int audit_remove_tree_rule (TYPE_1__*) ;
 int audit_remove_watch_rule (TYPE_1__*) ;
 int audit_signals ;
 int call_rcu (int *,int ) ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int audit_del_rule(struct audit_entry *entry)
{
 struct audit_entry *e;
 struct audit_tree *tree = entry->rule.tree;
 struct list_head *list;
 int ret = 0;
 mutex_lock(&audit_filter_mutex);
 e = audit_find_rule(entry, &list);
 if (!e) {
  ret = -ENOENT;
  goto out;
 }

 if (e->rule.watch)
  audit_remove_watch_rule(&e->rule);

 if (e->rule.tree)
  audit_remove_tree_rule(&e->rule);

 if (e->rule.exe)
  audit_remove_mark_rule(&e->rule);
 list_del_rcu(&e->list);
 list_del(&e->rule.list);
 call_rcu(&e->rcu, audit_free_rule_rcu);

out:
 mutex_unlock(&audit_filter_mutex);

 if (tree)
  audit_put_tree(tree);

 return ret;
}

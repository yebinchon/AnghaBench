
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_set {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {int count; int nreg; int inodes; struct ctl_node* node; int * parent; struct ctl_table_set* set; struct ctl_table_root* root; int * unregistering; scalar_t__ used; struct ctl_table* ctl_table_arg; struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ procname; } ;
struct ctl_node {struct ctl_table_header* header; } ;


 int INIT_HLIST_HEAD (int *) ;

__attribute__((used)) static void init_header(struct ctl_table_header *head,
 struct ctl_table_root *root, struct ctl_table_set *set,
 struct ctl_node *node, struct ctl_table *table)
{
 head->ctl_table = table;
 head->ctl_table_arg = table;
 head->used = 0;
 head->count = 1;
 head->nreg = 1;
 head->unregistering = ((void*)0);
 head->root = root;
 head->set = set;
 head->parent = ((void*)0);
 head->node = node;
 INIT_HLIST_HEAD(&head->inodes);
 if (node) {
  struct ctl_table *entry;
  for (entry = table; entry->procname; entry++, node++)
   node->header = head;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {struct ctl_node* node; struct ctl_table* ctl_table; } ;
struct ctl_table {int dummy; } ;
struct ctl_node {struct ctl_table_header* header; int node; } ;


 struct ctl_node* first_usable_entry (int ) ;
 int rb_next (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 int unuse_table (struct ctl_table_header*) ;

__attribute__((used)) static void next_entry(struct ctl_table_header **phead, struct ctl_table **pentry)
{
 struct ctl_table_header *head = *phead;
 struct ctl_table *entry = *pentry;
 struct ctl_node *ctl_node = &head->node[entry - head->ctl_table];

 spin_lock(&sysctl_lock);
 unuse_table(head);

 ctl_node = first_usable_entry(rb_next(&ctl_node->node));
 spin_unlock(&sysctl_lock);
 head = ((void*)0);
 if (ctl_node) {
  head = ctl_node->header;
  entry = &head->ctl_table[ctl_node - head->node];
 }
 *phead = head;
 *pentry = entry;
}

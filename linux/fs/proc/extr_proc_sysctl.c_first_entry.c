
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {struct ctl_node* node; struct ctl_table* ctl_table; } ;
struct ctl_table {int dummy; } ;
struct ctl_node {struct ctl_table_header* header; } ;
struct ctl_dir {int root; } ;


 struct ctl_node* first_usable_entry (int ) ;
 int rb_first (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;

__attribute__((used)) static void first_entry(struct ctl_dir *dir,
 struct ctl_table_header **phead, struct ctl_table **pentry)
{
 struct ctl_table_header *head = ((void*)0);
 struct ctl_table *entry = ((void*)0);
 struct ctl_node *ctl_node;

 spin_lock(&sysctl_lock);
 ctl_node = first_usable_entry(rb_first(&dir->root));
 spin_unlock(&sysctl_lock);
 if (ctl_node) {
  head = ctl_node->header;
  entry = &head->ctl_table[ctl_node - head->node];
 }
 *phead = head;
 *pentry = entry;
}

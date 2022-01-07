
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct ctl_table_header {TYPE_2__* parent; struct ctl_table* ctl_table; TYPE_1__* node; } ;
struct ctl_table {int dummy; } ;
struct TYPE_4__ {int root; } ;
struct TYPE_3__ {struct rb_node node; } ;


 int rb_erase (struct rb_node*,int *) ;

__attribute__((used)) static void erase_entry(struct ctl_table_header *head, struct ctl_table *entry)
{
 struct rb_node *node = &head->node[entry - head->ctl_table].node;

 rb_erase(node, &head->parent->root);
}

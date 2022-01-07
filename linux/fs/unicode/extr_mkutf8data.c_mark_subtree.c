
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {int mark; scalar_t__ leftnode; scalar_t__ rightnode; struct node* right; struct node* left; TYPE_1__* parent; int index; } ;
struct TYPE_2__ {int index; } ;


 scalar_t__ NODE ;

__attribute__((used)) static int mark_subtree(struct node *node)
{
 int changed;

 if (!node || node->mark)
  return 0;
 node->mark = 1;
 node->index = node->parent->index;
 changed = 1;
 if (node->leftnode == NODE)
  changed += mark_subtree(node->left);
 if (node->rightnode == NODE)
  changed += mark_subtree(node->right);
 return changed;
}

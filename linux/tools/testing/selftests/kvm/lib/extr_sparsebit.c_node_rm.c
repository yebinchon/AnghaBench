
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {scalar_t__ num_set; struct node* root; } ;
struct node {struct node* right; struct node* left; struct node* parent; } ;
typedef scalar_t__ sparsebit_num_t ;


 int assert (int) ;
 int free (struct node*) ;
 scalar_t__ node_num_set (struct node*) ;
 scalar_t__ sparsebit_all_set (struct sparsebit*) ;

__attribute__((used)) static void node_rm(struct sparsebit *s, struct node *nodep)
{
 struct node *tmp;
 sparsebit_num_t num_set;

 num_set = node_num_set(nodep);
 assert(s->num_set >= num_set || sparsebit_all_set(s));
 s->num_set -= node_num_set(nodep);


 if (nodep->left && nodep->right) {




  for (tmp = nodep->right; tmp->left; tmp = tmp->left)
   ;
  tmp->left = nodep->left;
  nodep->left = ((void*)0);
  tmp->left->parent = tmp;
 }


 if (nodep->left) {
  if (!nodep->parent) {
   s->root = nodep->left;
   nodep->left->parent = ((void*)0);
  } else {
   nodep->left->parent = nodep->parent;
   if (nodep == nodep->parent->left)
    nodep->parent->left = nodep->left;
   else {
    assert(nodep == nodep->parent->right);
    nodep->parent->right = nodep->left;
   }
  }

  nodep->parent = nodep->left = nodep->right = ((void*)0);
  free(nodep);

  return;
 }



 if (nodep->right) {
  if (!nodep->parent) {
   s->root = nodep->right;
   nodep->right->parent = ((void*)0);
  } else {
   nodep->right->parent = nodep->parent;
   if (nodep == nodep->parent->left)
    nodep->parent->left = nodep->right;
   else {
    assert(nodep == nodep->parent->right);
    nodep->parent->right = nodep->right;
   }
  }

  nodep->parent = nodep->left = nodep->right = ((void*)0);
  free(nodep);

  return;
 }


 if (!nodep->parent) {
  s->root = ((void*)0);
 } else {
  if (nodep->parent->left == nodep)
   nodep->parent->left = ((void*)0);
  else {
   assert(nodep == nodep->parent->right);
   nodep->parent->right = ((void*)0);
  }
 }

 nodep->parent = nodep->left = nodep->right = ((void*)0);
 free(nodep);

 return;
}

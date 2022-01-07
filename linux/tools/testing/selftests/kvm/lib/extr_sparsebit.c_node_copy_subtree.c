
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct node* parent; struct node* right; struct node* left; int num_after; int mask; int idx; } ;


 int abort () ;
 struct node* calloc (int,int) ;
 int perror (char*) ;

__attribute__((used)) static struct node *node_copy_subtree(struct node *subtree)
{
 struct node *root;


 root = calloc(1, sizeof(*root));
 if (!root) {
  perror("calloc");
  abort();
 }

 root->idx = subtree->idx;
 root->mask = subtree->mask;
 root->num_after = subtree->num_after;


 if (subtree->left) {
  root->left = node_copy_subtree(subtree->left);
  root->left->parent = root;
 }

 if (subtree->right) {
  root->right = node_copy_subtree(subtree->right);
  root->right->parent = root;
 }

 return root;
}

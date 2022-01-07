
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {struct node* root; } ;
struct node {int bitnum; scalar_t__ rightnode; scalar_t__ leftnode; struct node* left; struct node* right; scalar_t__ nextbyte; } ;


 scalar_t__ LEAF ;
 scalar_t__ NODE ;

__attribute__((used)) static void *lookup(struct tree *tree, const char *key)
{
 struct node *node;
 void *leaf = ((void*)0);

 node = tree->root;
 while (!leaf && node) {
  if (node->nextbyte)
   key++;
  if (*key & (1 << (node->bitnum & 7))) {

   if (node->rightnode == NODE) {
    node = node->right;
   } else if (node->rightnode == LEAF) {
    leaf = node->right;
   } else {
    node = ((void*)0);
   }
  } else {

   if (node->leftnode == NODE) {
    node = node->left;
   } else if (node->leftnode == LEAF) {
    leaf = node->left;
   } else {
    node = ((void*)0);
   }
  }
 }

 return leaf;
}

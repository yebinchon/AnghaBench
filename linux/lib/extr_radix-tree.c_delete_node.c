
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int * xa_head; } ;
struct radix_tree_node {size_t offset; int private_list; scalar_t__ count; int ** slots; struct radix_tree_node* parent; } ;


 int WARN_ON_ONCE (int) ;
 int is_idr (struct radix_tree_root*) ;
 int list_empty (int *) ;
 scalar_t__ node_to_entry (struct radix_tree_node*) ;
 int radix_tree_node_free (struct radix_tree_node*) ;
 int radix_tree_shrink (struct radix_tree_root*) ;
 scalar_t__ rcu_dereference_raw (int *) ;
 int root_tag_clear_all (struct radix_tree_root*) ;

__attribute__((used)) static bool delete_node(struct radix_tree_root *root,
   struct radix_tree_node *node)
{
 bool deleted = 0;

 do {
  struct radix_tree_node *parent;

  if (node->count) {
   if (node_to_entry(node) ==
     rcu_dereference_raw(root->xa_head))
    deleted |= radix_tree_shrink(root);
   return deleted;
  }

  parent = node->parent;
  if (parent) {
   parent->slots[node->offset] = ((void*)0);
   parent->count--;
  } else {




   if (!is_idr(root))
    root_tag_clear_all(root);
   root->xa_head = ((void*)0);
  }

  WARN_ON_ONCE(!list_empty(&node->private_list));
  radix_tree_node_free(node);
  deleted = 1;

  node = parent;
 } while (node);

 return deleted;
}

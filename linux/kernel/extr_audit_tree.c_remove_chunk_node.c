
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct audit_tree* owner; int list; } ;
struct audit_tree {struct audit_chunk* root; int same_root; } ;
struct audit_chunk {int dummy; } ;


 int list_del_init (int *) ;
 int put_tree (struct audit_tree*) ;

__attribute__((used)) static void remove_chunk_node(struct audit_chunk *chunk, struct node *p)
{
 struct audit_tree *owner = p->owner;

 if (owner->root == chunk) {
  list_del_init(&owner->same_root);
  owner->root = ((void*)0);
 }
 list_del_init(&p->list);
 p->owner = ((void*)0);
 put_tree(owner);
}

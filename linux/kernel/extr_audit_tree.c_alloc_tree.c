
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int pathname; int * root; int same_root; int list; int rules; int chunks; scalar_t__ goner; int count; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct audit_tree* kmalloc (scalar_t__,int ) ;
 int refcount_set (int *,int) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct audit_tree *alloc_tree(const char *s)
{
 struct audit_tree *tree;

 tree = kmalloc(sizeof(struct audit_tree) + strlen(s) + 1, GFP_KERNEL);
 if (tree) {
  refcount_set(&tree->count, 1);
  tree->goner = 0;
  INIT_LIST_HEAD(&tree->chunks);
  INIT_LIST_HEAD(&tree->rules);
  INIT_LIST_HEAD(&tree->list);
  INIT_LIST_HEAD(&tree->same_root);
  tree->root = ((void*)0);
  strcpy(tree->pathname, s);
 }
 return tree;
}

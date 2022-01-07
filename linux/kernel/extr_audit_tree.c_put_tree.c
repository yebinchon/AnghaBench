
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int count; } ;


 int head ;
 int kfree_rcu (struct audit_tree*,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void put_tree(struct audit_tree *tree)
{
 if (refcount_dec_and_test(&tree->count))
  kfree_rcu(tree, head);
}

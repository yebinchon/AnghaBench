
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_tree {int lock; int rbroot; } ;


 int GFP_KERNEL ;
 int RB_ROOT ;
 struct zswap_tree* kzalloc (int,int ) ;
 int pr_err (char*,unsigned int) ;
 int spin_lock_init (int *) ;
 struct zswap_tree** zswap_trees ;

__attribute__((used)) static void zswap_frontswap_init(unsigned type)
{
 struct zswap_tree *tree;

 tree = kzalloc(sizeof(*tree), GFP_KERNEL);
 if (!tree) {
  pr_err("alloc failed, zswap disabled for swap type %d\n", type);
  return;
 }

 tree->rbroot = RB_ROOT;
 spin_lock_init(&tree->lock);
 zswap_trees[type] = tree;
}

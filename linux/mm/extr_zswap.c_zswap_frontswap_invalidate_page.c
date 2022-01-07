
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zswap_tree {int lock; int rbroot; } ;
struct zswap_entry {int dummy; } ;
typedef int pgoff_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zswap_entry_put (struct zswap_tree*,struct zswap_entry*) ;
 int zswap_rb_erase (int *,struct zswap_entry*) ;
 struct zswap_entry* zswap_rb_search (int *,int ) ;
 struct zswap_tree** zswap_trees ;

__attribute__((used)) static void zswap_frontswap_invalidate_page(unsigned type, pgoff_t offset)
{
 struct zswap_tree *tree = zswap_trees[type];
 struct zswap_entry *entry;


 spin_lock(&tree->lock);
 entry = zswap_rb_search(&tree->rbroot, offset);
 if (!entry) {

  spin_unlock(&tree->lock);
  return;
 }


 zswap_rb_erase(&tree->rbroot, entry);


 zswap_entry_put(tree, entry);

 spin_unlock(&tree->lock);
}

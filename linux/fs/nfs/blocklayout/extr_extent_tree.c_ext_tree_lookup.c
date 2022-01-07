
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_layout {int bl_ext_lock; int bl_ext_rw; int bl_ext_ro; } ;
struct pnfs_block_extent {int dummy; } ;
typedef int sector_t ;


 int __ext_tree_lookup (int *,int ,struct pnfs_block_extent*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool
ext_tree_lookup(struct pnfs_block_layout *bl, sector_t isect,
     struct pnfs_block_extent *ret, bool rw)
{
 bool found = 0;

 spin_lock(&bl->bl_ext_lock);
 if (!rw)
  found = __ext_tree_lookup(&bl->bl_ext_ro, isect, ret);
 if (!found)
  found = __ext_tree_lookup(&bl->bl_ext_rw, isect, ret);
 spin_unlock(&bl->bl_ext_lock);

 return found;
}

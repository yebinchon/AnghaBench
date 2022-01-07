
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_layout {int bl_ext_lock; int bl_ext_rw; int bl_ext_ro; } ;
typedef int sector_t ;


 int LIST_HEAD (int ) ;
 int __ext_put_deviceids (int *) ;
 int __ext_tree_remove (int *,int ,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tmp ;

int ext_tree_remove(struct pnfs_block_layout *bl, bool rw,
  sector_t start, sector_t end)
{
 int err, err2;
 LIST_HEAD(tmp);

 spin_lock(&bl->bl_ext_lock);
 err = __ext_tree_remove(&bl->bl_ext_ro, start, end, &tmp);
 if (rw) {
  err2 = __ext_tree_remove(&bl->bl_ext_rw, start, end, &tmp);
  if (!err)
   err = err2;
 }
 spin_unlock(&bl->bl_ext_lock);

 __ext_put_deviceids(&tmp);
 return err;
}

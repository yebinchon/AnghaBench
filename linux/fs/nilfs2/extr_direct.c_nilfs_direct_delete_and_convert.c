
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_ops; } ;
typedef int __u64 ;
typedef int __le64 ;
struct TYPE_2__ {int (* bop_delete ) (struct nilfs_bmap*,int) ;int (* bop_clear ) (struct nilfs_bmap*) ;} ;


 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_DIRECT_NBLOCKS ;
 int cpu_to_le64 (int) ;
 int * nilfs_direct_dptrs (struct nilfs_bmap*) ;
 int nilfs_direct_init (struct nilfs_bmap*) ;
 int stub1 (struct nilfs_bmap*,int) ;
 int stub2 (struct nilfs_bmap*) ;

int nilfs_direct_delete_and_convert(struct nilfs_bmap *bmap,
        __u64 key, __u64 *keys, __u64 *ptrs, int n)
{
 __le64 *dptrs;
 int ret, i, j;




 ret = bmap->b_ops->bop_delete(bmap, key);
 if (ret < 0)
  return ret;


 if (bmap->b_ops->bop_clear != ((void*)0))
  bmap->b_ops->bop_clear(bmap);


 dptrs = nilfs_direct_dptrs(bmap);
 for (i = 0, j = 0; i < NILFS_DIRECT_NBLOCKS; i++) {
  if ((j < n) && (i == keys[j])) {
   dptrs[i] = (i != key) ?
    cpu_to_le64(ptrs[j]) :
    NILFS_BMAP_INVALID_PTR;
   j++;
  } else
   dptrs[i] = NILFS_BMAP_INVALID_PTR;
 }

 nilfs_direct_init(bmap);
 return 0;
}

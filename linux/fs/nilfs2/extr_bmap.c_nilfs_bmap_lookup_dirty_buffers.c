
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {TYPE_1__* b_ops; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int (* bop_lookup_dirty_buffers ) (struct nilfs_bmap*,struct list_head*) ;} ;


 int stub1 (struct nilfs_bmap*,struct list_head*) ;

void nilfs_bmap_lookup_dirty_buffers(struct nilfs_bmap *bmap,
         struct list_head *listp)
{
 if (bmap->b_ops->bop_lookup_dirty_buffers != ((void*)0))
  bmap->b_ops->bop_lookup_dirty_buffers(bmap, listp);
}

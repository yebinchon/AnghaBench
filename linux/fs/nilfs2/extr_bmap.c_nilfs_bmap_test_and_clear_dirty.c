
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_sem; } ;


 int down_write (int *) ;
 int nilfs_bmap_clear_dirty (struct nilfs_bmap*) ;
 int nilfs_bmap_dirty (struct nilfs_bmap*) ;
 int up_write (int *) ;

int nilfs_bmap_test_and_clear_dirty(struct nilfs_bmap *bmap)
{
 int ret;

 down_write(&bmap->b_sem);
 ret = nilfs_bmap_dirty(bmap);
 nilfs_bmap_clear_dirty(bmap);
 up_write(&bmap->b_sem);
 return ret;
}

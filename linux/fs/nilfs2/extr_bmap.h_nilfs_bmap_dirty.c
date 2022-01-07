
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_state; } ;


 int NILFS_BMAP_DIRTY ;

__attribute__((used)) static inline int nilfs_bmap_dirty(const struct nilfs_bmap *bmap)
{
 return !!(bmap->b_state & NILFS_BMAP_DIRTY);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
struct buffer_head {int b_blocknr; } ;


 int nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_dat_mark_dirty (int ,int ) ;

__attribute__((used)) static int nilfs_btree_propagate_gc(struct nilfs_bmap *btree,
        struct buffer_head *bh)
{
 return nilfs_dat_mark_dirty(nilfs_bmap_get_dat(btree), bh->b_blocknr);
}

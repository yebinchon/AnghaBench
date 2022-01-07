
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_inode; } ;


 int EIO ;
 int __nilfs_btree_init (struct nilfs_bmap*) ;
 int nilfs_btree_get_root (struct nilfs_bmap*) ;
 scalar_t__ nilfs_btree_root_broken (int ,int ) ;

int nilfs_btree_init(struct nilfs_bmap *bmap)
{
 int ret = 0;

 __nilfs_btree_init(bmap);

 if (nilfs_btree_root_broken(nilfs_btree_get_root(bmap), bmap->b_inode))
  ret = -EIO;
 return ret;
}

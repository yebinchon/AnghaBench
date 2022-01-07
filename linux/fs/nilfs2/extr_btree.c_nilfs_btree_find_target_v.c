
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ nilfs_bmap_find_target_in_group (struct nilfs_bmap const*) ;
 scalar_t__ nilfs_bmap_find_target_seq (struct nilfs_bmap const*,scalar_t__) ;
 scalar_t__ nilfs_btree_find_near (struct nilfs_bmap const*,struct nilfs_btree_path const*) ;

__attribute__((used)) static __u64 nilfs_btree_find_target_v(const struct nilfs_bmap *btree,
           const struct nilfs_btree_path *path,
           __u64 key)
{
 __u64 ptr;

 ptr = nilfs_bmap_find_target_seq(btree, key);
 if (ptr != NILFS_BMAP_INVALID_PTR)

  return ptr;

 ptr = nilfs_btree_find_near(btree, path);
 if (ptr != NILFS_BMAP_INVALID_PTR)

  return ptr;


 return nilfs_bmap_find_target_in_group(btree);
}

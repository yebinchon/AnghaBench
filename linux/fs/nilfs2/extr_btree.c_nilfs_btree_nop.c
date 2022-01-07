
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;



__attribute__((used)) static void nilfs_btree_nop(struct nilfs_bmap *btree,
       struct nilfs_btree_path *path,
       int level, __u64 *keyp, __u64 *ptrp)
{
}

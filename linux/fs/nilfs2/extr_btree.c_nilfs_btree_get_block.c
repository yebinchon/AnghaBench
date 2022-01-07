
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int __nilfs_btree_get_block (struct nilfs_bmap const*,int ,struct buffer_head**,int *) ;

__attribute__((used)) static int nilfs_btree_get_block(const struct nilfs_bmap *btree, __u64 ptr,
       struct buffer_head **bhp)
{
 return __nilfs_btree_get_block(btree, ptr, bhp, ((void*)0));
}

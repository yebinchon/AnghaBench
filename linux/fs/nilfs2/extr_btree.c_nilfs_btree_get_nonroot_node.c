
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_btree_path {TYPE_1__* bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;



__attribute__((used)) static struct nilfs_btree_node *
nilfs_btree_get_nonroot_node(const struct nilfs_btree_path *path, int level)
{
 return (struct nilfs_btree_node *)path[level].bp_bh->b_data;
}

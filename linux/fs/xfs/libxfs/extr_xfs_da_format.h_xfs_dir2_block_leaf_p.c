
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_dir2_block_tail {int count; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline struct xfs_dir2_leaf_entry *
xfs_dir2_block_leaf_p(struct xfs_dir2_block_tail *btp)
{
 return ((struct xfs_dir2_leaf_entry *)btp) - be32_to_cpu(btp->count);
}

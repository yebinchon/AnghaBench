
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_leaf_tail {int bestcount; } ;
typedef int __be16 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline __be16 *
xfs_dir2_leaf_bests_p(struct xfs_dir2_leaf_tail *ltp)
{
 return (__be16 *)ltp - be32_to_cpu(ltp->bestcount);
}

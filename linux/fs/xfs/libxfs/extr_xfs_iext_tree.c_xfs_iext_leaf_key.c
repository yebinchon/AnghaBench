
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct xfs_iext_leaf {TYPE_1__* recs; } ;
struct TYPE_2__ {int lo; } ;


 int XFS_IEXT_STARTOFF_MASK ;

__attribute__((used)) static inline uint64_t
xfs_iext_leaf_key(
 struct xfs_iext_leaf *leaf,
 int n)
{
 return leaf->recs[n].lo & XFS_IEXT_STARTOFF_MASK;
}

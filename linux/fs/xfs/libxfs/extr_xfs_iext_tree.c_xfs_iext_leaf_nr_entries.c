
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int dummy; } ;
struct xfs_iext_leaf {int * recs; } ;


 int xfs_iext_max_recs (struct xfs_ifork*) ;
 scalar_t__ xfs_iext_rec_is_empty (int *) ;

__attribute__((used)) static int
xfs_iext_leaf_nr_entries(
 struct xfs_ifork *ifp,
 struct xfs_iext_leaf *leaf,
 int start)
{
 int i;

 for (i = start; i < xfs_iext_max_recs(ifp); i++) {
  if (xfs_iext_rec_is_empty(&leaf->recs[i]))
   break;
 }

 return i;
}

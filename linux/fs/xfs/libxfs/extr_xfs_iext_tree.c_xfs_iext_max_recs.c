
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int if_height; } ;


 int RECS_PER_LEAF ;
 int xfs_iext_count (struct xfs_ifork*) ;

__attribute__((used)) static inline int xfs_iext_max_recs(struct xfs_ifork *ifp)
{
 if (ifp->if_height == 1)
  return xfs_iext_count(ifp);
 return RECS_PER_LEAF;
}

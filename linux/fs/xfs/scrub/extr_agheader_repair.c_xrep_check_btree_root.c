
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
struct xrep_find_ag_btree {scalar_t__ height; int root; } ;
struct xfs_scrub {TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int sm_agno; } ;


 scalar_t__ XFS_BTREE_MAXLEVELS ;
 scalar_t__ xfs_verify_agbno (struct xfs_mount*,int ,int ) ;

__attribute__((used)) static inline bool
xrep_check_btree_root(
 struct xfs_scrub *sc,
 struct xrep_find_ag_btree *fab)
{
 struct xfs_mount *mp = sc->mp;
 xfs_agnumber_t agno = sc->sm->sm_agno;

 return xfs_verify_agbno(mp, agno, fab->root) &&
        fab->height <= XFS_BTREE_MAXLEVELS;
}

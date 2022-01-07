
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_ifork {int if_broot_bytes; } ;
struct TYPE_4__ {int whichfork; int ip; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
struct xfs_btree_cur {int bc_nlevels; TYPE_3__* bc_mp; TYPE_2__ bc_private; } ;
struct TYPE_6__ {int* m_bmap_dmxr; } ;


 struct xfs_ifork* XFS_IFORK_PTR (int ,int ) ;
 int xfs_bmbt_maxrecs (TYPE_3__*,int ,int) ;

int
xfs_bmbt_get_maxrecs(
 struct xfs_btree_cur *cur,
 int level)
{
 if (level == cur->bc_nlevels - 1) {
  struct xfs_ifork *ifp;

  ifp = XFS_IFORK_PTR(cur->bc_private.b.ip,
        cur->bc_private.b.whichfork);

  return xfs_bmbt_maxrecs(cur->bc_mp,
     ifp->if_broot_bytes, level == 0);
 }

 return cur->bc_mp->m_bmap_dmxr[level != 0];

}

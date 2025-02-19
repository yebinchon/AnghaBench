
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct xfs_mount* i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_bmbt_rec_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_ifork {int if_broot_bytes; char* if_broot; int if_flags; } ;
typedef char xfs_btree_block ;


 int ASSERT (int) ;
 int KM_NOFS ;
 scalar_t__ XFS_BMAP_BMDR_SPACE (char*) ;
 scalar_t__ XFS_BMAP_BROOT_PTR_ADDR (struct xfs_mount*,char*,int,int) ;
 size_t XFS_BMAP_BROOT_SPACE_CALC (struct xfs_mount*,int) ;
 int XFS_BMBT_BLOCK_LEN (struct xfs_mount*) ;
 scalar_t__ XFS_BMBT_REC_ADDR (struct xfs_mount*,char*,int) ;
 int XFS_IFBROOT ;
 struct xfs_ifork* XFS_IFORK_PTR (TYPE_1__*,int) ;
 scalar_t__ XFS_IFORK_SIZE (TYPE_1__*,int) ;
 void* kmem_alloc (size_t,int ) ;
 int kmem_free (char*) ;
 char* kmem_realloc (char*,size_t,int ) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int xfs_bmbt_maxrecs (struct xfs_mount*,int,int ) ;

void
xfs_iroot_realloc(
 xfs_inode_t *ip,
 int rec_diff,
 int whichfork)
{
 struct xfs_mount *mp = ip->i_mount;
 int cur_max;
 struct xfs_ifork *ifp;
 struct xfs_btree_block *new_broot;
 int new_max;
 size_t new_size;
 char *np;
 char *op;




 if (rec_diff == 0) {
  return;
 }

 ifp = XFS_IFORK_PTR(ip, whichfork);
 if (rec_diff > 0) {




  if (ifp->if_broot_bytes == 0) {
   new_size = XFS_BMAP_BROOT_SPACE_CALC(mp, rec_diff);
   ifp->if_broot = kmem_alloc(new_size, KM_NOFS);
   ifp->if_broot_bytes = (int)new_size;
   return;
  }







  cur_max = xfs_bmbt_maxrecs(mp, ifp->if_broot_bytes, 0);
  new_max = cur_max + rec_diff;
  new_size = XFS_BMAP_BROOT_SPACE_CALC(mp, new_max);
  ifp->if_broot = kmem_realloc(ifp->if_broot, new_size,
    KM_NOFS);
  op = (char *)XFS_BMAP_BROOT_PTR_ADDR(mp, ifp->if_broot, 1,
           ifp->if_broot_bytes);
  np = (char *)XFS_BMAP_BROOT_PTR_ADDR(mp, ifp->if_broot, 1,
           (int)new_size);
  ifp->if_broot_bytes = (int)new_size;
  ASSERT(XFS_BMAP_BMDR_SPACE(ifp->if_broot) <=
   XFS_IFORK_SIZE(ip, whichfork));
  memmove(np, op, cur_max * (uint)sizeof(xfs_fsblock_t));
  return;
 }






 ASSERT((ifp->if_broot != ((void*)0)) && (ifp->if_broot_bytes > 0));
 cur_max = xfs_bmbt_maxrecs(mp, ifp->if_broot_bytes, 0);
 new_max = cur_max + rec_diff;
 ASSERT(new_max >= 0);
 if (new_max > 0)
  new_size = XFS_BMAP_BROOT_SPACE_CALC(mp, new_max);
 else
  new_size = 0;
 if (new_size > 0) {
  new_broot = kmem_alloc(new_size, KM_NOFS);



  memcpy(new_broot, ifp->if_broot,
   XFS_BMBT_BLOCK_LEN(ip->i_mount));
 } else {
  new_broot = ((void*)0);
  ifp->if_flags &= ~XFS_IFBROOT;
 }




 if (new_max > 0) {



  op = (char *)XFS_BMBT_REC_ADDR(mp, ifp->if_broot, 1);
  np = (char *)XFS_BMBT_REC_ADDR(mp, new_broot, 1);
  memcpy(np, op, new_max * (uint)sizeof(xfs_bmbt_rec_t));




  op = (char *)XFS_BMAP_BROOT_PTR_ADDR(mp, ifp->if_broot, 1,
           ifp->if_broot_bytes);
  np = (char *)XFS_BMAP_BROOT_PTR_ADDR(mp, new_broot, 1,
           (int)new_size);
  memcpy(np, op, new_max * (uint)sizeof(xfs_fsblock_t));
 }
 kmem_free(ifp->if_broot);
 ifp->if_broot = new_broot;
 ifp->if_broot_bytes = (int)new_size;
 if (ifp->if_broot)
  ASSERT(XFS_BMAP_BMDR_SPACE(ifp->if_broot) <=
   XFS_IFORK_SIZE(ip, whichfork));
 return;
}

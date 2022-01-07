
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int pag_ici_lock; int pag_ici_root; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int i_flags_lock; int i_ino; struct xfs_mount* i_mount; } ;


 int XFS_ICI_RECLAIM_TAG ;
 int XFS_INO_TO_AGINO (struct xfs_mount*,int ) ;
 int XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_IRECLAIMABLE ;
 int __xfs_iflags_set (struct xfs_inode*,int ) ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_perag_set_reclaim_tag (struct xfs_perag*) ;

void
xfs_inode_set_reclaim_tag(
 struct xfs_inode *ip)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_perag *pag;

 pag = xfs_perag_get(mp, XFS_INO_TO_AGNO(mp, ip->i_ino));
 spin_lock(&pag->pag_ici_lock);
 spin_lock(&ip->i_flags_lock);

 radix_tree_tag_set(&pag->pag_ici_root, XFS_INO_TO_AGINO(mp, ip->i_ino),
      XFS_ICI_RECLAIM_TAG);
 xfs_perag_set_reclaim_tag(pag);
 __xfs_iflags_set(ip, XFS_IRECLAIMABLE);

 spin_unlock(&ip->i_flags_lock);
 spin_unlock(&pag->pag_ici_lock);
 xfs_perag_put(pag);
}

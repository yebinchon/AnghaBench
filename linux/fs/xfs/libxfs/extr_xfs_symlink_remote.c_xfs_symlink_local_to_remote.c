
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_inode {int i_ino; struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int if_data; } ;
struct xfs_ifork {int if_bytes; TYPE_1__ if_u1; } ;
struct xfs_dsymlink_hdr {int dummy; } ;
struct xfs_buf {char* b_addr; int * b_ops; int b_length; } ;


 int ASSERT (int) ;
 scalar_t__ BBTOB (int ) ;
 int XFS_BLFT_SYMLINK_BUF ;
 int memcpy (char*,int ,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_symlink_buf_ops ;
 int xfs_symlink_hdr_set (struct xfs_mount*,int ,int ,int ,struct xfs_buf*) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;
 int xfs_trans_log_buf (struct xfs_trans*,struct xfs_buf*,int ,scalar_t__) ;

void
xfs_symlink_local_to_remote(
 struct xfs_trans *tp,
 struct xfs_buf *bp,
 struct xfs_inode *ip,
 struct xfs_ifork *ifp)
{
 struct xfs_mount *mp = ip->i_mount;
 char *buf;

 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_SYMLINK_BUF);

 if (!xfs_sb_version_hascrc(&mp->m_sb)) {
  bp->b_ops = ((void*)0);
  memcpy(bp->b_addr, ifp->if_u1.if_data, ifp->if_bytes);
  xfs_trans_log_buf(tp, bp, 0, ifp->if_bytes - 1);
  return;
 }





 ASSERT(BBTOB(bp->b_length) >=
   ifp->if_bytes + sizeof(struct xfs_dsymlink_hdr));

 bp->b_ops = &xfs_symlink_buf_ops;

 buf = bp->b_addr;
 buf += xfs_symlink_hdr_set(mp, ip->i_ino, 0, ifp->if_bytes, bp);
 memcpy(buf, ifp->if_u1.if_data, ifp->if_bytes);
 xfs_trans_log_buf(tp, bp, 0, sizeof(struct xfs_dsymlink_hdr) +
     ifp->if_bytes - 1);
}

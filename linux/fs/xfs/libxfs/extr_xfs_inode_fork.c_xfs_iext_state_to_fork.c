
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int dummy; } ;
struct xfs_inode {struct xfs_ifork i_df; struct xfs_ifork* i_afp; struct xfs_ifork* i_cowfp; } ;


 int BMAP_ATTRFORK ;
 int BMAP_COWFORK ;

struct xfs_ifork *
xfs_iext_state_to_fork(
 struct xfs_inode *ip,
 int state)
{
 if (state & BMAP_COWFORK)
  return ip->i_cowfp;
 else if (state & BMAP_ATTRFORK)
  return ip->i_afp;
 return &ip->i_df;
}

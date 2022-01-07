
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xfs_bmbt_irec {int br_startblock; } ;


 int isnullstartblock (int ) ;
 scalar_t__ xfs_is_always_cow_inode (struct xfs_inode*) ;
 int xfs_reflink_trim_around_shared (struct xfs_inode*,struct xfs_bmbt_irec*,int*) ;

bool
xfs_inode_need_cow(
 struct xfs_inode *ip,
 struct xfs_bmbt_irec *imap,
 bool *shared)
{

 if (xfs_is_always_cow_inode(ip) &&
     !isnullstartblock(imap->br_startblock)) {
  *shared = 1;
  return 0;
 }


 return xfs_reflink_trim_around_shared(ip, imap, shared);
}

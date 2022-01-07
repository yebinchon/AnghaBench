
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_off_t ;
struct xfs_inode {int i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_state; } ;


 scalar_t__ DELAYSTARTBLOCK ;
 int EIO ;
 scalar_t__ HOLESTARTBLOCK ;
 int XFS_B_TO_FSBT (int ,scalar_t__) ;
 scalar_t__ XFS_EXT_UNWRITTEN ;
 int XFS_ILOCK_SHARED ;
 int xfs_bmapi_read (struct xfs_inode*,int ,int,struct xfs_bmbt_irec*,int*,int ) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;

__attribute__((used)) static int
xfs_pnfs_validate_isize(
 struct xfs_inode *ip,
 xfs_off_t isize)
{
 struct xfs_bmbt_irec imap;
 int nimaps = 1;
 int error = 0;

 xfs_ilock(ip, XFS_ILOCK_SHARED);
 error = xfs_bmapi_read(ip, XFS_B_TO_FSBT(ip->i_mount, isize - 1), 1,
    &imap, &nimaps, 0);
 xfs_iunlock(ip, XFS_ILOCK_SHARED);
 if (error)
  return error;

 if (imap.br_startblock == HOLESTARTBLOCK ||
     imap.br_startblock == DELAYSTARTBLOCK ||
     imap.br_state == XFS_EXT_UNWRITTEN)
  return -EIO;
 return 0;
}

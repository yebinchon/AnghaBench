
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
struct xfs_inode {int i_cowfp; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; int br_startblock; } ;


 scalar_t__ isnullstartblock (int ) ;
 int xfs_iext_lookup_extent (struct xfs_inode*,int ,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_inode_need_cow (struct xfs_inode*,struct xfs_bmbt_irec*,int*) ;
 int xfs_trim_extent (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
xfs_find_trim_cow_extent(
 struct xfs_inode *ip,
 struct xfs_bmbt_irec *imap,
 bool *shared,
 bool *found)
{
 xfs_fileoff_t offset_fsb = imap->br_startoff;
 xfs_filblks_t count_fsb = imap->br_blockcount;
 struct xfs_iext_cursor icur;
 struct xfs_bmbt_irec got;

 *found = 0;





 if (!xfs_iext_lookup_extent(ip, ip->i_cowfp, offset_fsb, &icur, &got))
  got.br_startoff = offset_fsb + count_fsb;
 if (got.br_startoff > offset_fsb) {
  xfs_trim_extent(imap, imap->br_startoff,
    got.br_startoff - imap->br_startoff);
  return xfs_inode_need_cow(ip, imap, shared);
 }

 *shared = 1;
 if (isnullstartblock(got.br_startblock)) {
  xfs_trim_extent(imap, got.br_startoff, got.br_blockcount);
  return 0;
 }


 xfs_trim_extent(&got, offset_fsb, count_fsb);
 *imap = got;
 *found = 1;
 return 0;
}

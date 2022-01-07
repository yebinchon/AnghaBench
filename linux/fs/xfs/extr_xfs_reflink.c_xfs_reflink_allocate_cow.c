
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
typedef int xfs_filblks_t ;
typedef scalar_t__ xfs_extlen_t ;
typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int i_cowfp; struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int br_blockcount; int br_startoff; } ;
struct TYPE_2__ {int tr_write; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 TYPE_1__* M_RES (struct xfs_mount*) ;
 int XFS_BMAPI_COWFORK ;
 int XFS_BMAPI_PREALLOC ;
 scalar_t__ XFS_DIOSTRAT_SPACE_RES (struct xfs_mount*,int ) ;
 scalar_t__ XFS_EXT_NORM ;
 int XFS_ILOCK_EXCL ;
 int XFS_QMOPT_RES_REGBLKS ;
 int trace_xfs_reflink_convert_cow (struct xfs_inode*,struct xfs_bmbt_irec*) ;
 int xfs_aligned_fsb_count (int ,int ,int ) ;
 int xfs_bmapi_write (struct xfs_trans*,struct xfs_inode*,int ,int ,int,scalar_t__,struct xfs_bmbt_irec*,int*) ;
 int xfs_find_trim_cow_extent (struct xfs_inode*,struct xfs_bmbt_irec*,int*,int*) ;
 int xfs_get_cowextsz_hint (struct xfs_inode*) ;
 int xfs_ifork_init_cow (struct xfs_inode*) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_inode_set_cowblocks_tag (struct xfs_inode*) ;
 int xfs_is_reflink_inode (struct xfs_inode*) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_qm_dqattach_locked (struct xfs_inode*,int) ;
 int xfs_reflink_convert_cow_locked (struct xfs_inode*,int ,int ) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,scalar_t__,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_reserve_quota_nblks (struct xfs_trans*,struct xfs_inode*,scalar_t__,int ,int ) ;
 int xfs_trans_unreserve_quota_nblks (struct xfs_trans*,struct xfs_inode*,long,int ,int ) ;
 int xfs_trim_extent (struct xfs_bmbt_irec*,int ,int ) ;

int
xfs_reflink_allocate_cow(
 struct xfs_inode *ip,
 struct xfs_bmbt_irec *imap,
 bool *shared,
 uint *lockmode,
 bool convert_now)
{
 struct xfs_mount *mp = ip->i_mount;
 xfs_fileoff_t offset_fsb = imap->br_startoff;
 xfs_filblks_t count_fsb = imap->br_blockcount;
 struct xfs_trans *tp;
 int nimaps, error = 0;
 bool found;
 xfs_filblks_t resaligned;
 xfs_extlen_t resblks = 0;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 if (!ip->i_cowfp) {
  ASSERT(!xfs_is_reflink_inode(ip));
  xfs_ifork_init_cow(ip);
 }

 error = xfs_find_trim_cow_extent(ip, imap, shared, &found);
 if (error || !*shared)
  return error;
 if (found)
  goto convert;

 resaligned = xfs_aligned_fsb_count(imap->br_startoff,
  imap->br_blockcount, xfs_get_cowextsz_hint(ip));
 resblks = XFS_DIOSTRAT_SPACE_RES(mp, resaligned);

 xfs_iunlock(ip, *lockmode);
 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_write, resblks, 0, 0, &tp);
 *lockmode = XFS_ILOCK_EXCL;
 xfs_ilock(ip, *lockmode);

 if (error)
  return error;

 error = xfs_qm_dqattach_locked(ip, 0);
 if (error)
  goto out_trans_cancel;




 error = xfs_find_trim_cow_extent(ip, imap, shared, &found);
 if (error || !*shared)
  goto out_trans_cancel;
 if (found) {
  xfs_trans_cancel(tp);
  goto convert;
 }

 error = xfs_trans_reserve_quota_nblks(tp, ip, resblks, 0,
   XFS_QMOPT_RES_REGBLKS);
 if (error)
  goto out_trans_cancel;

 xfs_trans_ijoin(tp, ip, 0);


 nimaps = 1;
 error = xfs_bmapi_write(tp, ip, imap->br_startoff, imap->br_blockcount,
   XFS_BMAPI_COWFORK | XFS_BMAPI_PREALLOC,
   resblks, imap, &nimaps);
 if (error)
  goto out_unreserve;

 xfs_inode_set_cowblocks_tag(ip);
 error = xfs_trans_commit(tp);
 if (error)
  return error;





 if (nimaps == 0)
  return -ENOSPC;
convert:
 xfs_trim_extent(imap, offset_fsb, count_fsb);





 if (!convert_now || imap->br_state == XFS_EXT_NORM)
  return 0;
 trace_xfs_reflink_convert_cow(ip, imap);
 return xfs_reflink_convert_cow_locked(ip, offset_fsb, count_fsb);

out_unreserve:
 xfs_trans_unreserve_quota_nblks(tp, ip, (long)resblks, 0,
   XFS_QMOPT_RES_REGBLKS);
out_trans_cancel:
 xfs_trans_cancel(tp);
 return error;
}

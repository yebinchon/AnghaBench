
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
struct xfs_mount {TYPE_2__* m_super; } ;
struct TYPE_4__ {long long di_size; int di_flags; } ;
struct xfs_inode {TYPE_1__ i_d; int i_delayed_blks; struct xfs_mount* i_mount; } ;
struct xfs_ifork {int if_flags; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
struct kgetbmap {int bmv_oflags; } ;
struct getbmapx {int bmv_iflags; int bmv_length; int bmv_entries; long long bmv_offset; } ;
typedef long long int64_t ;
struct TYPE_6__ {int i_mapping; } ;
struct TYPE_5__ {long long s_maxbytes; } ;


 int BMV_IF_ATTRFORK ;
 int BMV_IF_COWFORK ;
 int BMV_IF_DELALLOC ;
 int BMV_IF_VALID ;
 int BMV_OF_LAST ;
 int EINVAL ;
 TYPE_3__* VFS_I (struct xfs_inode*) ;

 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,long long) ;
 scalar_t__ XFS_BB_TO_FSBT (struct xfs_mount*,long long) ;
 scalar_t__ XFS_B_TO_FSB (struct xfs_mount*,long long) ;


 int XFS_DIFLAG_APPEND ;
 int XFS_DIFLAG_PREALLOC ;



 long long XFS_FSB_TO_BB (struct xfs_mount*,scalar_t__) ;
 int XFS_IFEXTENTS ;
 int XFS_IFORK_FORMAT (struct xfs_inode*,int) ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int) ;
 int XFS_IFORK_Q (struct xfs_inode*) ;
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_SHARED ;
 long long XFS_ISIZE (struct xfs_inode*) ;
 int filemap_write_and_wait (int ) ;
 int max (long long,long long) ;
 int xfs_get_cowextsz_hint (struct xfs_inode*) ;
 int xfs_get_extsz_hint (struct xfs_inode*) ;
 scalar_t__ xfs_getbmap_full (struct getbmapx*) ;
 scalar_t__ xfs_getbmap_next_rec (struct xfs_bmbt_irec*,scalar_t__) ;
 int xfs_getbmap_report_hole (struct xfs_inode*,struct getbmapx*,struct kgetbmap*,long long,scalar_t__,scalar_t__) ;
 int xfs_getbmap_report_one (struct xfs_inode*,struct getbmapx*,struct kgetbmap*,long long,struct xfs_bmbt_irec*) ;
 int xfs_iext_lookup_extent (struct xfs_inode*,struct xfs_ifork*,scalar_t__,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iext_next_extent (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_ilock (struct xfs_inode*,int) ;
 int xfs_ilock_attr_map_shared (struct xfs_inode*) ;
 int xfs_ilock_data_map_shared (struct xfs_inode*) ;
 int xfs_iread_extents (int *,struct xfs_inode*,int) ;
 int xfs_iunlock (struct xfs_inode*,int) ;
 int xfs_trim_extent (struct xfs_bmbt_irec*,scalar_t__,scalar_t__) ;

int
xfs_getbmap(
 struct xfs_inode *ip,
 struct getbmapx *bmv,
 struct kgetbmap *out)
{
 struct xfs_mount *mp = ip->i_mount;
 int iflags = bmv->bmv_iflags;
 int whichfork, lock, error = 0;
 int64_t bmv_end, max_len;
 xfs_fileoff_t bno, first_bno;
 struct xfs_ifork *ifp;
 struct xfs_bmbt_irec got, rec;
 xfs_filblks_t len;
 struct xfs_iext_cursor icur;

 if (bmv->bmv_iflags & ~BMV_IF_VALID)
  return -EINVAL;


 if (iflags & BMV_IF_COWFORK)
  return -EINVAL;

 if ((iflags & BMV_IF_ATTRFORK) && (iflags & BMV_IF_COWFORK))
  return -EINVAL;

 if (bmv->bmv_length < -1)
  return -EINVAL;
 bmv->bmv_entries = 0;
 if (bmv->bmv_length == 0)
  return 0;

 if (iflags & BMV_IF_ATTRFORK)
  whichfork = 133;
 else if (iflags & BMV_IF_COWFORK)
  whichfork = 132;
 else
  whichfork = 131;
 ifp = XFS_IFORK_PTR(ip, whichfork);

 xfs_ilock(ip, XFS_IOLOCK_SHARED);
 switch (whichfork) {
 case 133:
  if (!XFS_IFORK_Q(ip))
   goto out_unlock_iolock;

  max_len = 1LL << 32;
  lock = xfs_ilock_attr_map_shared(ip);
  break;
 case 132:

  if (!ifp)
   goto out_unlock_iolock;

  if (xfs_get_cowextsz_hint(ip))
   max_len = mp->m_super->s_maxbytes;
  else
   max_len = XFS_ISIZE(ip);

  lock = XFS_ILOCK_SHARED;
  xfs_ilock(ip, lock);
  break;
 case 131:
  if (!(iflags & BMV_IF_DELALLOC) &&
      (ip->i_delayed_blks || XFS_ISIZE(ip) > ip->i_d.di_size)) {
   error = filemap_write_and_wait(VFS_I(ip)->i_mapping);
   if (error)
    goto out_unlock_iolock;
  }

  if (xfs_get_extsz_hint(ip) ||
      (ip->i_d.di_flags &
       (XFS_DIFLAG_PREALLOC | XFS_DIFLAG_APPEND)))
   max_len = mp->m_super->s_maxbytes;
  else
   max_len = XFS_ISIZE(ip);

  lock = xfs_ilock_data_map_shared(ip);
  break;
 }

 switch (XFS_IFORK_FORMAT(ip, whichfork)) {
 case 129:
 case 130:
  break;
 case 128:

  goto out_unlock_ilock;
 default:
  error = -EINVAL;
  goto out_unlock_ilock;
 }

 if (bmv->bmv_length == -1) {
  max_len = XFS_FSB_TO_BB(mp, XFS_B_TO_FSB(mp, max_len));
  bmv->bmv_length = max(0LL, max_len - bmv->bmv_offset);
 }

 bmv_end = bmv->bmv_offset + bmv->bmv_length;

 first_bno = bno = XFS_BB_TO_FSBT(mp, bmv->bmv_offset);
 len = XFS_BB_TO_FSB(mp, bmv->bmv_length);

 if (!(ifp->if_flags & XFS_IFEXTENTS)) {
  error = xfs_iread_extents(((void*)0), ip, whichfork);
  if (error)
   goto out_unlock_ilock;
 }

 if (!xfs_iext_lookup_extent(ip, ifp, bno, &icur, &got)) {




  if (iflags & BMV_IF_DELALLOC)
   xfs_getbmap_report_hole(ip, bmv, out, bmv_end, bno,
     XFS_B_TO_FSB(mp, XFS_ISIZE(ip)));
  goto out_unlock_ilock;
 }

 while (!xfs_getbmap_full(bmv)) {
  xfs_trim_extent(&got, first_bno, len);





  if (got.br_startoff > bno) {
   xfs_getbmap_report_hole(ip, bmv, out, bmv_end, bno,
     got.br_startoff);
   if (xfs_getbmap_full(bmv))
    break;
  }






  bno = got.br_startoff + got.br_blockcount;
  rec = got;
  do {
   error = xfs_getbmap_report_one(ip, bmv, out, bmv_end,
     &rec);
   if (error || xfs_getbmap_full(bmv))
    goto out_unlock_ilock;
  } while (xfs_getbmap_next_rec(&rec, bno));

  if (!xfs_iext_next_extent(ifp, &icur, &got)) {
   xfs_fileoff_t end = XFS_B_TO_FSB(mp, XFS_ISIZE(ip));

   out[bmv->bmv_entries - 1].bmv_oflags |= BMV_OF_LAST;

   if (whichfork != 133 && bno < end &&
       !xfs_getbmap_full(bmv)) {
    xfs_getbmap_report_hole(ip, bmv, out, bmv_end,
      bno, end);
   }
   break;
  }

  if (bno >= first_bno + len)
   break;
 }

out_unlock_ilock:
 xfs_iunlock(ip, lock);
out_unlock_iolock:
 xfs_iunlock(ip, XFS_IOLOCK_SHARED);
 return error;
}

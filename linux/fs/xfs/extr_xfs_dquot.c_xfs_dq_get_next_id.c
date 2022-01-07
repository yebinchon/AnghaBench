
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {TYPE_1__* m_quotainfo; } ;
struct TYPE_4__ {int if_flags; } ;
struct xfs_inode {TYPE_2__ i_df; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {int br_startoff; } ;
struct TYPE_3__ {int qi_dqperchunk; } ;


 int ENOENT ;
 int XFS_DATA_FORK ;
 int XFS_IFEXTENTS ;
 scalar_t__ xfs_iext_lookup_extent (struct xfs_inode*,TYPE_2__*,int,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_ilock_data_map_shared (struct xfs_inode*) ;
 int xfs_iread_extents (int *,struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 struct xfs_inode* xfs_quota_inode (struct xfs_mount*,int ) ;

__attribute__((used)) static int
xfs_dq_get_next_id(
 struct xfs_mount *mp,
 uint type,
 xfs_dqid_t *id)
{
 struct xfs_inode *quotip = xfs_quota_inode(mp, type);
 xfs_dqid_t next_id = *id + 1;
 uint lock_flags;
 struct xfs_bmbt_irec got;
 struct xfs_iext_cursor cur;
 xfs_fsblock_t start;
 int error = 0;


 if (next_id < *id)
  return -ENOENT;


 if (next_id % mp->m_quotainfo->qi_dqperchunk) {
  *id = next_id;
  return 0;
 }


 start = (xfs_fsblock_t)next_id / mp->m_quotainfo->qi_dqperchunk;

 lock_flags = xfs_ilock_data_map_shared(quotip);
 if (!(quotip->i_df.if_flags & XFS_IFEXTENTS)) {
  error = xfs_iread_extents(((void*)0), quotip, XFS_DATA_FORK);
  if (error)
   return error;
 }

 if (xfs_iext_lookup_extent(quotip, &quotip->i_df, start, &cur, &got)) {

  if (got.br_startoff < start)
   got.br_startoff = start;
  *id = got.br_startoff * mp->m_quotainfo->qi_dqperchunk;
 } else {
  error = -ENOENT;
 }

 xfs_iunlock(quotip, lock_flags);

 return error;
}

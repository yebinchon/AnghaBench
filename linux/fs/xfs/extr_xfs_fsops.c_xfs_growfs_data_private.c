
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int xfs_trans_t ;
typedef scalar_t__ xfs_rfsblock_t ;
struct TYPE_22__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; int sb_agcount; } ;
struct TYPE_20__ {int m_maxagi; int m_alloc_set_aside; TYPE_5__ m_sb; int m_ddev_targp; } ;
typedef TYPE_1__ xfs_mount_t ;
struct TYPE_21__ {scalar_t__ newblocks; } ;
typedef TYPE_2__ xfs_growfs_data_t ;
typedef int xfs_buf_t ;
typedef int xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct aghdr_init_data {int agno; scalar_t__ agsize; int nfree; int buffer_list; } ;
struct TYPE_19__ {int tr_growdata; } ;


 int EINVAL ;
 int ENOSPC ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_17__* M_RES (TYPE_1__*) ;
 scalar_t__ XFS_FSB_TO_BB (TYPE_1__*,scalar_t__) ;
 scalar_t__ XFS_FSS_TO_BB (TYPE_1__*,int) ;
 int XFS_GROWFS_SPACE_RES (TYPE_1__*) ;
 scalar_t__ XFS_MIN_AG_BLOCKS ;
 int XFS_TRANS_RESERVE ;
 int XFS_TRANS_SB_AGCOUNT ;
 int XFS_TRANS_SB_DBLOCKS ;
 int XFS_TRANS_SB_FDBLOCKS ;
 scalar_t__ do_div (scalar_t__,scalar_t__) ;
 int xfs_ag_extend_space (TYPE_1__*,int *,struct aghdr_init_data*,scalar_t__) ;
 int xfs_ag_init_headers (TYPE_1__*,struct aghdr_init_data*) ;
 int xfs_ag_resv_free (struct xfs_perag*) ;
 int xfs_alloc_set_aside (TYPE_1__*) ;
 int xfs_buf_delwri_cancel (int *) ;
 int xfs_buf_delwri_submit (int *) ;
 int xfs_buf_read_uncached (int ,scalar_t__,scalar_t__,int ,int **,int *) ;
 int xfs_buf_relse (int *) ;
 int xfs_fs_reserve_ag_blocks (TYPE_1__*) ;
 int xfs_initialize_perag (TYPE_1__*,int,int*) ;
 struct xfs_perag* xfs_perag_get (TYPE_1__*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_sb_validate_fsb_count (TYPE_5__*,scalar_t__) ;
 int xfs_set_low_space_thresholds (TYPE_1__*) ;
 int xfs_trans_agblocks_delta (int *,int) ;
 int xfs_trans_alloc (TYPE_1__*,int *,int ,int ,int ,int **) ;
 int xfs_trans_cancel (int *) ;
 int xfs_trans_commit (int *) ;
 int xfs_trans_mod_sb (int *,int ,scalar_t__) ;
 int xfs_trans_set_sync (int *) ;

__attribute__((used)) static int
xfs_growfs_data_private(
 xfs_mount_t *mp,
 xfs_growfs_data_t *in)
{
 xfs_buf_t *bp;
 int error;
 xfs_agnumber_t nagcount;
 xfs_agnumber_t nagimax = 0;
 xfs_rfsblock_t nb, nb_mod;
 xfs_rfsblock_t new;
 xfs_agnumber_t oagcount;
 xfs_trans_t *tp;
 struct aghdr_init_data id = {};

 nb = in->newblocks;
 if (nb < mp->m_sb.sb_dblocks)
  return -EINVAL;
 if ((error = xfs_sb_validate_fsb_count(&mp->m_sb, nb)))
  return error;
 error = xfs_buf_read_uncached(mp->m_ddev_targp,
    XFS_FSB_TO_BB(mp, nb) - XFS_FSS_TO_BB(mp, 1),
    XFS_FSS_TO_BB(mp, 1), 0, &bp, ((void*)0));
 if (error)
  return error;
 xfs_buf_relse(bp);

 new = nb;
 nb_mod = do_div(new, mp->m_sb.sb_agblocks);
 nagcount = new + (nb_mod != 0);
 if (nb_mod && nb_mod < XFS_MIN_AG_BLOCKS) {
  nagcount--;
  nb = (xfs_rfsblock_t)nagcount * mp->m_sb.sb_agblocks;
  if (nb < mp->m_sb.sb_dblocks)
   return -EINVAL;
 }
 new = nb - mp->m_sb.sb_dblocks;
 oagcount = mp->m_sb.sb_agcount;


 if (nagcount > oagcount) {
  error = xfs_initialize_perag(mp, nagcount, &nagimax);
  if (error)
   return error;
 }

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_growdata,
   XFS_GROWFS_SPACE_RES(mp), 0, XFS_TRANS_RESERVE, &tp);
 if (error)
  return error;
 INIT_LIST_HEAD(&id.buffer_list);
 for (id.agno = nagcount - 1;
      id.agno >= oagcount;
      id.agno--, new -= id.agsize) {

  if (id.agno == nagcount - 1)
   id.agsize = nb -
    (id.agno * (xfs_rfsblock_t)mp->m_sb.sb_agblocks);
  else
   id.agsize = mp->m_sb.sb_agblocks;

  error = xfs_ag_init_headers(mp, &id);
  if (error) {
   xfs_buf_delwri_cancel(&id.buffer_list);
   goto out_trans_cancel;
  }
 }
 error = xfs_buf_delwri_submit(&id.buffer_list);
 if (error)
  goto out_trans_cancel;

 xfs_trans_agblocks_delta(tp, id.nfree);


 if (new) {
  error = xfs_ag_extend_space(mp, tp, &id, new);
  if (error)
   goto out_trans_cancel;
 }






 if (nagcount > oagcount)
  xfs_trans_mod_sb(tp, XFS_TRANS_SB_AGCOUNT, nagcount - oagcount);
 if (nb > mp->m_sb.sb_dblocks)
  xfs_trans_mod_sb(tp, XFS_TRANS_SB_DBLOCKS,
     nb - mp->m_sb.sb_dblocks);
 if (id.nfree)
  xfs_trans_mod_sb(tp, XFS_TRANS_SB_FDBLOCKS, id.nfree);
 xfs_trans_set_sync(tp);
 error = xfs_trans_commit(tp);
 if (error)
  return error;


 if (nagimax)
  mp->m_maxagi = nagimax;
 xfs_set_low_space_thresholds(mp);
 mp->m_alloc_set_aside = xfs_alloc_set_aside(mp);





 if (new) {
  struct xfs_perag *pag;

  pag = xfs_perag_get(mp, id.agno);
  error = xfs_ag_resv_free(pag);
  xfs_perag_put(pag);
  if (error)
   return error;
 }






 error = xfs_fs_reserve_ag_blocks(mp);
 if (error == -ENOSPC)
  error = 0;
 return error;

out_trans_cancel:
 xfs_trans_cancel(tp);
 return error;
}

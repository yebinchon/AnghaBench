
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
struct TYPE_13__ {int pagf_btreeblks; int pagf_flcount; int pagf_agflreset; } ;
typedef TYPE_2__ xfs_perag_t ;
typedef int xfs_mount_t ;
typedef int xfs_buf_t ;
struct TYPE_14__ {scalar_t__ agf_btreeblks; scalar_t__ agf_flcount; scalar_t__ agf_seqno; scalar_t__ agf_flfirst; } ;
typedef TYPE_3__ xfs_agf_t ;
typedef size_t xfs_agblock_t ;
typedef scalar_t__ __be32 ;


 int ASSERT (int) ;
 size_t NULLAGBLOCK ;
 int XFS_AGF_BTREEBLKS ;
 int XFS_AGF_FLCOUNT ;
 int XFS_AGF_FLFIRST ;
 TYPE_3__* XFS_BUF_TO_AGF (int *) ;
 scalar_t__* XFS_BUF_TO_AGFL_BNO (int *,int *) ;
 int be32_add_cpu (scalar_t__*,int) ;
 size_t be32_to_cpu (scalar_t__) ;
 size_t xfs_agfl_size (int *) ;
 int xfs_alloc_log_agf (TYPE_1__*,int *,int) ;
 int xfs_alloc_read_agfl (int *,TYPE_1__*,size_t,int **) ;
 TYPE_2__* xfs_perag_get (int *,size_t) ;
 int xfs_perag_put (TYPE_2__*) ;
 int xfs_trans_agflist_delta (TYPE_1__*,int) ;
 int xfs_trans_brelse (TYPE_1__*,int *) ;

int
xfs_alloc_get_freelist(
 xfs_trans_t *tp,
 xfs_buf_t *agbp,
 xfs_agblock_t *bnop,
 int btreeblk)
{
 xfs_agf_t *agf;
 xfs_buf_t *agflbp;
 xfs_agblock_t bno;
 __be32 *agfl_bno;
 int error;
 int logflags;
 xfs_mount_t *mp = tp->t_mountp;
 xfs_perag_t *pag;




 agf = XFS_BUF_TO_AGF(agbp);
 if (!agf->agf_flcount) {
  *bnop = NULLAGBLOCK;
  return 0;
 }



 error = xfs_alloc_read_agfl(mp, tp, be32_to_cpu(agf->agf_seqno),
        &agflbp);
 if (error)
  return error;





 agfl_bno = XFS_BUF_TO_AGFL_BNO(mp, agflbp);
 bno = be32_to_cpu(agfl_bno[be32_to_cpu(agf->agf_flfirst)]);
 be32_add_cpu(&agf->agf_flfirst, 1);
 xfs_trans_brelse(tp, agflbp);
 if (be32_to_cpu(agf->agf_flfirst) == xfs_agfl_size(mp))
  agf->agf_flfirst = 0;

 pag = xfs_perag_get(mp, be32_to_cpu(agf->agf_seqno));
 ASSERT(!pag->pagf_agflreset);
 be32_add_cpu(&agf->agf_flcount, -1);
 xfs_trans_agflist_delta(tp, -1);
 pag->pagf_flcount--;

 logflags = XFS_AGF_FLFIRST | XFS_AGF_FLCOUNT;
 if (btreeblk) {
  be32_add_cpu(&agf->agf_btreeblks, 1);
  pag->pagf_btreeblks++;
  logflags |= XFS_AGF_BTREEBLKS;
 }
 xfs_perag_put(pag);

 xfs_alloc_log_agf(tp, agbp, logflags);
 *bnop = bno;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int * t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
struct TYPE_23__ {int pagf_btreeblks; int pagf_flcount; int pagf_agflreset; } ;
typedef TYPE_2__ xfs_perag_t ;
typedef int xfs_mount_t ;
struct TYPE_24__ {scalar_t__ b_addr; } ;
typedef TYPE_3__ xfs_buf_t ;
struct TYPE_25__ {scalar_t__ agf_fllast; scalar_t__ agf_flcount; scalar_t__ agf_btreeblks; scalar_t__ agf_seqno; } ;
typedef TYPE_4__ xfs_agf_t ;
typedef int xfs_agblock_t ;
typedef int __be32 ;


 int ASSERT (int) ;
 int XFS_AGF_BTREEBLKS ;
 int XFS_AGF_FLCOUNT ;
 int XFS_AGF_FLLAST ;
 int XFS_BLFT_AGFL_BUF ;
 TYPE_4__* XFS_BUF_TO_AGF (TYPE_3__*) ;
 int * XFS_BUF_TO_AGFL_BNO (int *,TYPE_3__*) ;
 int be32_add_cpu (scalar_t__*,int) ;
 size_t be32_to_cpu (scalar_t__) ;
 int cpu_to_be32 (int ) ;
 size_t xfs_agfl_size (int *) ;
 int xfs_alloc_log_agf (TYPE_1__*,TYPE_3__*,int) ;
 int xfs_alloc_read_agfl (int *,TYPE_1__*,size_t,TYPE_3__**) ;
 TYPE_2__* xfs_perag_get (int *,size_t) ;
 int xfs_perag_put (TYPE_2__*) ;
 int xfs_trans_agflist_delta (TYPE_1__*,int) ;
 int xfs_trans_buf_set_type (TYPE_1__*,TYPE_3__*,int ) ;
 int xfs_trans_log_buf (TYPE_1__*,TYPE_3__*,int,int) ;

int
xfs_alloc_put_freelist(
 xfs_trans_t *tp,
 xfs_buf_t *agbp,
 xfs_buf_t *agflbp,
 xfs_agblock_t bno,
 int btreeblk)
{
 xfs_agf_t *agf;
 __be32 *blockp;
 int error;
 int logflags;
 xfs_mount_t *mp;
 xfs_perag_t *pag;
 __be32 *agfl_bno;
 int startoff;

 agf = XFS_BUF_TO_AGF(agbp);
 mp = tp->t_mountp;

 if (!agflbp && (error = xfs_alloc_read_agfl(mp, tp,
   be32_to_cpu(agf->agf_seqno), &agflbp)))
  return error;
 be32_add_cpu(&agf->agf_fllast, 1);
 if (be32_to_cpu(agf->agf_fllast) == xfs_agfl_size(mp))
  agf->agf_fllast = 0;

 pag = xfs_perag_get(mp, be32_to_cpu(agf->agf_seqno));
 ASSERT(!pag->pagf_agflreset);
 be32_add_cpu(&agf->agf_flcount, 1);
 xfs_trans_agflist_delta(tp, 1);
 pag->pagf_flcount++;

 logflags = XFS_AGF_FLLAST | XFS_AGF_FLCOUNT;
 if (btreeblk) {
  be32_add_cpu(&agf->agf_btreeblks, -1);
  pag->pagf_btreeblks--;
  logflags |= XFS_AGF_BTREEBLKS;
 }
 xfs_perag_put(pag);

 xfs_alloc_log_agf(tp, agbp, logflags);

 ASSERT(be32_to_cpu(agf->agf_flcount) <= xfs_agfl_size(mp));

 agfl_bno = XFS_BUF_TO_AGFL_BNO(mp, agflbp);
 blockp = &agfl_bno[be32_to_cpu(agf->agf_fllast)];
 *blockp = cpu_to_be32(bno);
 startoff = (char *)blockp - (char *)agflbp->b_addr;

 xfs_alloc_log_agf(tp, agbp, logflags);

 xfs_trans_buf_set_type(tp, agflbp, XFS_BLFT_AGFL_BUF);
 xfs_trans_log_buf(tp, agflbp, startoff,
     startoff + sizeof(xfs_agblock_t) - 1);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_perag {int pagi_init; scalar_t__ pagi_freecount; scalar_t__ pagi_count; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {int agi_freecount; int agi_count; } ;


 int ASSERT (int) ;
 struct xfs_agi* XFS_BUF_TO_AGI (struct xfs_buf*) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 scalar_t__ be32_to_cpu (int ) ;
 int trace_xfs_ialloc_read_agi (struct xfs_mount*,int ) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_read_agi (struct xfs_mount*,struct xfs_trans*,int ,struct xfs_buf**) ;

int
xfs_ialloc_read_agi(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 struct xfs_buf **bpp)
{
 struct xfs_agi *agi;
 struct xfs_perag *pag;
 int error;

 trace_xfs_ialloc_read_agi(mp, agno);

 error = xfs_read_agi(mp, tp, agno, bpp);
 if (error)
  return error;

 agi = XFS_BUF_TO_AGI(*bpp);
 pag = xfs_perag_get(mp, agno);
 if (!pag->pagi_init) {
  pag->pagi_freecount = be32_to_cpu(agi->agi_freecount);
  pag->pagi_count = be32_to_cpu(agi->agi_count);
  pag->pagi_init = 1;
 }





 ASSERT(pag->pagi_freecount == be32_to_cpu(agi->agi_freecount) ||
  XFS_FORCED_SHUTDOWN(mp));
 xfs_perag_put(pag);
 return 0;
}

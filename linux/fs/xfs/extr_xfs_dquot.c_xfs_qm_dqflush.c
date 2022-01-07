
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
typedef int xfs_disk_dquot_t ;
struct xfs_mount {int m_sb; int m_ail; TYPE_1__* m_quotainfo; int m_ddev_targp; } ;
struct xfs_log_item {int li_lsn; } ;
struct TYPE_4__ {struct xfs_log_item qli_item; int qli_flush_lsn; } ;
struct xfs_dquot {int q_bufoffset; TYPE_2__ q_logitem; int dq_flags; int q_core; int q_blkno; int q_flush; struct xfs_mount* q_mount; } ;
struct xfs_disk_dquot {int d_id; } ;
struct xfs_dqblk {int dd_lsn; struct xfs_disk_dquot dd_diskdq; } ;
struct xfs_buf {struct xfs_dqblk* b_addr; } ;
struct TYPE_3__ {int qi_dqchunklen; } ;


 int ASSERT (int) ;
 int EIO ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int XFS_DQUOT_CRC_OFF ;
 int XFS_DQ_DIRTY ;
 int XFS_DQ_IS_LOCKED (struct xfs_dquot*) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int be32_to_cpu (int ) ;
 int completion_done (int *) ;
 int cpu_to_be64 (int ) ;
 int memcpy (struct xfs_disk_dquot*,int *,int) ;
 int trace_xfs_dqflush (struct xfs_dquot*) ;
 int trace_xfs_dqflush_done (struct xfs_dquot*) ;
 int trace_xfs_dqflush_force (struct xfs_dquot*) ;
 int xfs_alert (struct xfs_mount*,char*,int ,scalar_t__) ;
 int xfs_buf_attach_iodone (struct xfs_buf*,int ,struct xfs_log_item*) ;
 scalar_t__ xfs_buf_ispinned (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 scalar_t__ xfs_dqblk_verify (struct xfs_mount*,struct xfs_dqblk*,int ,int ) ;
 int xfs_dqfunlock (struct xfs_dquot*) ;
 int xfs_dquot_buf_ops ;
 int xfs_force_shutdown (struct xfs_mount*,int ) ;
 int xfs_log_force (struct xfs_mount*,int ) ;
 int xfs_qm_dqflush_done ;
 int xfs_qm_dqunpin_wait (struct xfs_dquot*) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;
 int xfs_trans_ail_copy_lsn (int ,int *,int *) ;
 int xfs_trans_ail_remove (struct xfs_log_item*,int ) ;
 int xfs_trans_read_buf (struct xfs_mount*,int *,int ,int ,int ,int ,struct xfs_buf**,int *) ;
 int xfs_update_cksum (char*,int,int ) ;

int
xfs_qm_dqflush(
 struct xfs_dquot *dqp,
 struct xfs_buf **bpp)
{
 struct xfs_mount *mp = dqp->q_mount;
 struct xfs_buf *bp;
 struct xfs_dqblk *dqb;
 struct xfs_disk_dquot *ddqp;
 xfs_failaddr_t fa;
 int error;

 ASSERT(XFS_DQ_IS_LOCKED(dqp));
 ASSERT(!completion_done(&dqp->q_flush));

 trace_xfs_dqflush(dqp);

 *bpp = ((void*)0);

 xfs_qm_dqunpin_wait(dqp);
 if (XFS_FORCED_SHUTDOWN(mp)) {
  struct xfs_log_item *lip = &dqp->q_logitem.qli_item;
  dqp->dq_flags &= ~XFS_DQ_DIRTY;

  xfs_trans_ail_remove(lip, SHUTDOWN_CORRUPT_INCORE);

  error = -EIO;
  goto out_unlock;
 }




 error = xfs_trans_read_buf(mp, ((void*)0), mp->m_ddev_targp, dqp->q_blkno,
       mp->m_quotainfo->qi_dqchunklen, 0, &bp,
       &xfs_dquot_buf_ops);
 if (error)
  goto out_unlock;




 dqb = bp->b_addr + dqp->q_bufoffset;
 ddqp = &dqb->dd_diskdq;




 fa = xfs_dqblk_verify(mp, dqb, be32_to_cpu(ddqp->d_id), 0);
 if (fa) {
  xfs_alert(mp, "corrupt dquot ID 0x%x in memory at %pS",
    be32_to_cpu(ddqp->d_id), fa);
  xfs_buf_relse(bp);
  xfs_dqfunlock(dqp);
  xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
  return -EIO;
 }


 memcpy(ddqp, &dqp->q_core, sizeof(xfs_disk_dquot_t));




 dqp->dq_flags &= ~XFS_DQ_DIRTY;

 xfs_trans_ail_copy_lsn(mp->m_ail, &dqp->q_logitem.qli_flush_lsn,
     &dqp->q_logitem.qli_item.li_lsn);
 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  dqb->dd_lsn = cpu_to_be64(dqp->q_logitem.qli_item.li_lsn);
  xfs_update_cksum((char *)dqb, sizeof(struct xfs_dqblk),
     XFS_DQUOT_CRC_OFF);
 }





 xfs_buf_attach_iodone(bp, xfs_qm_dqflush_done,
      &dqp->q_logitem.qli_item);





 if (xfs_buf_ispinned(bp)) {
  trace_xfs_dqflush_force(dqp);
  xfs_log_force(mp, 0);
 }

 trace_xfs_dqflush_done(dqp);
 *bpp = bp;
 return 0;

out_unlock:
 xfs_dqfunlock(dqp);
 return -EIO;
}

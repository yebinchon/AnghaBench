
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int ASSERT (int ) ;
 int ENOENT ;
 int trace_xfs_dqread (struct xfs_dquot*) ;
 int trace_xfs_dqread_fail (struct xfs_dquot*) ;
 int xfs_buf_islocked (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 struct xfs_dquot* xfs_dquot_alloc (struct xfs_mount*,int ,int ) ;
 int xfs_dquot_disk_read (struct xfs_mount*,struct xfs_dquot*,struct xfs_buf**) ;
 int xfs_dquot_from_disk (struct xfs_dquot*,struct xfs_buf*) ;
 int xfs_qm_dqdestroy (struct xfs_dquot*) ;
 int xfs_qm_dqread_alloc (struct xfs_mount*,struct xfs_dquot*,struct xfs_buf**) ;

__attribute__((used)) static int
xfs_qm_dqread(
 struct xfs_mount *mp,
 xfs_dqid_t id,
 uint type,
 bool can_alloc,
 struct xfs_dquot **dqpp)
{
 struct xfs_dquot *dqp;
 struct xfs_buf *bp;
 int error;

 dqp = xfs_dquot_alloc(mp, id, type);
 trace_xfs_dqread(dqp);


 error = xfs_dquot_disk_read(mp, dqp, &bp);
 if (error == -ENOENT && can_alloc)
  error = xfs_qm_dqread_alloc(mp, dqp, &bp);
 if (error)
  goto err;







 ASSERT(xfs_buf_islocked(bp));
 xfs_dquot_from_disk(dqp, bp);

 xfs_buf_relse(bp);
 *dqpp = dqp;
 return error;

err:
 trace_xfs_dqread_fail(dqp);
 xfs_qm_dqdestroy(dqp);
 *dqpp = ((void*)0);
 return error;
}

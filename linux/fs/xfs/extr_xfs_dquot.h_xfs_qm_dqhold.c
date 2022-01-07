
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dquot {int q_nrefs; } ;


 int xfs_dqlock (struct xfs_dquot*) ;
 int xfs_dqunlock (struct xfs_dquot*) ;

__attribute__((used)) static inline struct xfs_dquot *xfs_qm_dqhold(struct xfs_dquot *dqp)
{
 xfs_dqlock(dqp);
 dqp->q_nrefs++;
 xfs_dqunlock(dqp);
 return dqp;
}

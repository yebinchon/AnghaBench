
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dquot {int q_qlock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void xfs_dqunlock(struct xfs_dquot *dqp)
{
 mutex_unlock(&dqp->q_qlock);
}

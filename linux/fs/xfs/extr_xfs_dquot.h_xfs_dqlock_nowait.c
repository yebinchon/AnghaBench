
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dquot {int q_qlock; } ;


 int mutex_trylock (int *) ;

__attribute__((used)) static inline int xfs_dqlock_nowait(struct xfs_dquot *dqp)
{
 return mutex_trylock(&dqp->q_qlock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xfs_ail {int ail_lock; } ;


 int ASSERT (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
xfs_trans_ail_copy_lsn(
 struct xfs_ail *ailp,
 xfs_lsn_t *dst,
 xfs_lsn_t *src)
{
 ASSERT(sizeof(xfs_lsn_t) == 8);
 spin_lock(&ailp->ail_lock);
 *dst = *src;
 spin_unlock(&ailp->ail_lock);
}

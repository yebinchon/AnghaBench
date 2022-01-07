
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_lock; } ;


 int __xfs_buf_ioacct_dec (struct xfs_buf*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
xfs_buf_ioacct_dec(
 struct xfs_buf *bp)
{
 spin_lock(&bp->b_lock);
 __xfs_buf_ioacct_dec(bp);
 spin_unlock(&bp->b_lock);
}

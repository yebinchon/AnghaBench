
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_lru_ref; int b_lru; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void xfs_buf_oneshot(struct xfs_buf *bp)
{
 if (!list_empty(&bp->b_lru) || atomic_read(&bp->b_lru_ref) > 1)
  return;
 atomic_set(&bp->b_lru_ref, 0);
}

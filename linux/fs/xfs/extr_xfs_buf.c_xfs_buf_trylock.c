
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_sema; } ;


 int _RET_IP_ ;
 scalar_t__ down_trylock (int *) ;
 int trace_xfs_buf_trylock (struct xfs_buf*,int ) ;
 int trace_xfs_buf_trylock_fail (struct xfs_buf*,int ) ;

int
xfs_buf_trylock(
 struct xfs_buf *bp)
{
 int locked;

 locked = down_trylock(&bp->b_sema) == 0;
 if (locked)
  trace_xfs_buf_trylock(bp, _RET_IP_);
 else
  trace_xfs_buf_trylock_fail(bp, _RET_IP_);
 return locked;
}

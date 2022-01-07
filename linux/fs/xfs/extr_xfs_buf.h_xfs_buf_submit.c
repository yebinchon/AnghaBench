
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; } ;


 int XBF_ASYNC ;
 int __xfs_buf_submit (struct xfs_buf*,int) ;

__attribute__((used)) static inline int xfs_buf_submit(struct xfs_buf *bp)
{
 bool wait = bp->b_flags & XBF_ASYNC ? 0 : 1;
 return __xfs_buf_submit(bp, wait);
}

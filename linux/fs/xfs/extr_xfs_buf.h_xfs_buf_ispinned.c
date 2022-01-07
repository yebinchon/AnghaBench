
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_pin_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int xfs_buf_ispinned(struct xfs_buf *bp)
{
 return atomic_read(&bp->b_pin_count);
}

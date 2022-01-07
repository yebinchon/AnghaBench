
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_page_count; int b_offset; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline int
xfs_buf_vmap_len(
 struct xfs_buf *bp)
{
 return (bp->b_page_count * PAGE_SIZE) - bp->b_offset;
}

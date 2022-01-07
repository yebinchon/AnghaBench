
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_length; int b_addr; } ;


 int BBTOB (int ) ;
 int xfs_verify_cksum (int ,int ,unsigned long) ;

__attribute__((used)) static inline int
xfs_buf_verify_cksum(struct xfs_buf *bp, unsigned long cksum_offset)
{
 return xfs_verify_cksum(bp->b_addr, BBTOB(bp->b_length),
    cksum_offset);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agblock_t ;
struct xfs_refcount_irec {scalar_t__ rc_blockcount; scalar_t__ rc_startblock; } ;



__attribute__((used)) static inline xfs_agblock_t
xfs_refc_next(
 struct xfs_refcount_irec *rc)
{
 return rc->rc_startblock + rc->rc_blockcount;
}

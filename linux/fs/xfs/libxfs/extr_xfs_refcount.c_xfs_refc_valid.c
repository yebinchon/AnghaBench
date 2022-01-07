
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_refcount_irec {scalar_t__ rc_startblock; } ;


 scalar_t__ NULLAGBLOCK ;

__attribute__((used)) static inline bool
xfs_refc_valid(
 struct xfs_refcount_irec *rc)
{
 return rc->rc_startblock != NULLAGBLOCK;
}

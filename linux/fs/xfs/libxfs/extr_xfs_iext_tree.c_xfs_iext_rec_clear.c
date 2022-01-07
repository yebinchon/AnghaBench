
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_rec {scalar_t__ hi; scalar_t__ lo; } ;



__attribute__((used)) static inline void xfs_iext_rec_clear(struct xfs_iext_rec *rec)
{
 rec->lo = 0;
 rec->hi = 0;
}

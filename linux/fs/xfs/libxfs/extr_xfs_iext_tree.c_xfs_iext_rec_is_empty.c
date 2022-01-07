
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_rec {scalar_t__ hi; } ;



__attribute__((used)) static bool xfs_iext_rec_is_empty(struct xfs_iext_rec *rec)
{
 return rec->hi == 0;
}

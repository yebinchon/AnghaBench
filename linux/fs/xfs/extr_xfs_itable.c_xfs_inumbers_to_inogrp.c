
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inumbers {int xi_allocmask; int xi_alloccount; int xi_startino; } ;
struct xfs_inogrp {int xi_allocmask; int xi_alloccount; int xi_startino; } ;


 int memset (struct xfs_inogrp*,int ,int) ;

void
xfs_inumbers_to_inogrp(
 struct xfs_inogrp *ig1,
 const struct xfs_inumbers *ig)
{

 memset(ig1, 0, sizeof(struct xfs_inogrp));
 ig1->xi_startino = ig->xi_startino;
 ig1->xi_alloccount = ig->xi_alloccount;
 ig1->xi_allocmask = ig->xi_allocmask;
}

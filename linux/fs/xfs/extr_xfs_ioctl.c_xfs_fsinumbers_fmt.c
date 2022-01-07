
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inumbers {int dummy; } ;
struct xfs_inogrp {int dummy; } ;
struct xfs_ibulk {int ubuffer; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct xfs_inogrp*,int) ;
 int xfs_ibulk_advance (struct xfs_ibulk*,int) ;
 int xfs_inumbers_to_inogrp (struct xfs_inogrp*,struct xfs_inumbers const*) ;

int
xfs_fsinumbers_fmt(
 struct xfs_ibulk *breq,
 const struct xfs_inumbers *igrp)
{
 struct xfs_inogrp ig1;

 xfs_inumbers_to_inogrp(&ig1, igrp);
 if (copy_to_user(breq->ubuffer, &ig1, sizeof(struct xfs_inogrp)))
  return -EFAULT;
 return xfs_ibulk_advance(breq, sizeof(struct xfs_inogrp));
}

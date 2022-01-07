
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inumbers_chunk {struct xfs_ibulk* breq; int formatter; } ;
struct xfs_ibulk {scalar_t__ ocount; int icount; int flags; int startino; int mp; } ;
typedef int inumbers_fmt_pf ;


 scalar_t__ xfs_bulkstat_already_done (int ,int ) ;
 int xfs_inobt_walk (int ,int *,int ,int ,int ,int ,struct xfs_inumbers_chunk*) ;
 int xfs_inumbers_walk ;

int
xfs_inumbers(
 struct xfs_ibulk *breq,
 inumbers_fmt_pf formatter)
{
 struct xfs_inumbers_chunk ic = {
  .formatter = formatter,
  .breq = breq,
 };
 int error = 0;

 if (xfs_bulkstat_already_done(breq->mp, breq->startino))
  return 0;

 error = xfs_inobt_walk(breq->mp, ((void*)0), breq->startino, breq->flags,
   xfs_inumbers_walk, breq->icount, &ic);
 if (breq->ocount > 0)
  error = 0;

 return error;
}

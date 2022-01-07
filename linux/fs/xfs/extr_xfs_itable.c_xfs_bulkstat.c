
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ibulk {scalar_t__ ocount; int icount; int flags; int startino; int mp; } ;
struct xfs_bulkstat {int dummy; } ;
struct xfs_bstat_chunk {int buf; struct xfs_ibulk* breq; int formatter; } ;
typedef int bulkstat_one_fmt_pf ;


 int ENOMEM ;
 int KM_MAYFAIL ;
 int kmem_free (int ) ;
 int kmem_zalloc (int,int ) ;
 scalar_t__ xfs_bulkstat_already_done (int ,int ) ;
 int xfs_bulkstat_iwalk ;
 int xfs_iwalk (int ,int *,int ,int ,int ,int ,struct xfs_bstat_chunk*) ;

int
xfs_bulkstat(
 struct xfs_ibulk *breq,
 bulkstat_one_fmt_pf formatter)
{
 struct xfs_bstat_chunk bc = {
  .formatter = formatter,
  .breq = breq,
 };
 int error;

 if (xfs_bulkstat_already_done(breq->mp, breq->startino))
  return 0;

 bc.buf = kmem_zalloc(sizeof(struct xfs_bulkstat),
   KM_MAYFAIL);
 if (!bc.buf)
  return -ENOMEM;

 error = xfs_iwalk(breq->mp, ((void*)0), breq->startino, breq->flags,
   xfs_bulkstat_iwalk, breq->icount, &bc);

 kmem_free(bc.buf);
 if (breq->ocount > 0)
  error = 0;

 return error;
}

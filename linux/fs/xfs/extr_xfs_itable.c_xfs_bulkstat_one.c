
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ibulk {int icount; int startino; int mp; } ;
struct xfs_bulkstat {int dummy; } ;
struct xfs_bstat_chunk {int buf; struct xfs_ibulk* breq; int formatter; } ;
typedef int bulkstat_one_fmt_pf ;


 int ASSERT (int) ;
 int ECANCELED ;
 int ENOMEM ;
 int KM_MAYFAIL ;
 int kmem_free (int ) ;
 int kmem_zalloc (int,int ) ;
 int xfs_bulkstat_one_int (int ,int *,int ,struct xfs_bstat_chunk*) ;

int
xfs_bulkstat_one(
 struct xfs_ibulk *breq,
 bulkstat_one_fmt_pf formatter)
{
 struct xfs_bstat_chunk bc = {
  .formatter = formatter,
  .breq = breq,
 };
 int error;

 ASSERT(breq->icount == 1);

 bc.buf = kmem_zalloc(sizeof(struct xfs_bulkstat),
   KM_MAYFAIL);
 if (!bc.buf)
  return -ENOMEM;

 error = xfs_bulkstat_one_int(breq->mp, ((void*)0), breq->startino, &bc);

 kmem_free(bc.buf);





 if (error == -ECANCELED)
  error = 0;

 return error;
}

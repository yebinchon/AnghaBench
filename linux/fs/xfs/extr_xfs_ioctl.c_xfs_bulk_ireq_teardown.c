
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ibulk {int ocount; int startino; } ;
struct xfs_bulk_ireq {int ocount; int ino; } ;



__attribute__((used)) static void
xfs_bulk_ireq_teardown(
 struct xfs_bulk_ireq *hdr,
 struct xfs_ibulk *breq)
{
 hdr->ino = breq->startino;
 hdr->ocount = breq->ocount;
}

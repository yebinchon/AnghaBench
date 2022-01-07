
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {void (* li_cb ) (struct xfs_buf*,struct xfs_log_item*) ;int li_bio_list; } ;
struct xfs_buf {int * b_iodone; int b_li_list; } ;


 int ASSERT (int) ;
 int list_add_tail (int *,int *) ;
 int * xfs_buf_iodone_callbacks ;
 int xfs_buf_islocked (struct xfs_buf*) ;

void
xfs_buf_attach_iodone(
 struct xfs_buf *bp,
 void (*cb)(struct xfs_buf *, struct xfs_log_item *),
 struct xfs_log_item *lip)
{
 ASSERT(xfs_buf_islocked(bp));

 lip->li_cb = cb;
 list_add_tail(&lip->li_bio_list, &bp->b_li_list);

 ASSERT(bp->b_iodone == ((void*)0) ||
        bp->b_iodone == xfs_buf_iodone_callbacks);
 bp->b_iodone = xfs_buf_iodone_callbacks;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int * b_iodone; int b_li_list; int * b_log_item; scalar_t__ b_first_retry_time; scalar_t__ b_retries; scalar_t__ b_last_error; scalar_t__ b_error; } ;


 int list_del_init (int *) ;
 int xfs_buf_do_callbacks (struct xfs_buf*) ;
 scalar_t__ xfs_buf_iodone_callback_error (struct xfs_buf*) ;
 int xfs_buf_ioend (struct xfs_buf*) ;

void
xfs_buf_iodone_callbacks(
 struct xfs_buf *bp)
{





 if (bp->b_error && xfs_buf_iodone_callback_error(bp))
  return;





 bp->b_last_error = 0;
 bp->b_retries = 0;
 bp->b_first_retry_time = 0;

 xfs_buf_do_callbacks(bp);
 bp->b_log_item = ((void*)0);
 list_del_init(&bp->b_li_list);
 bp->b_iodone = ((void*)0);
 xfs_buf_ioend(bp);
}

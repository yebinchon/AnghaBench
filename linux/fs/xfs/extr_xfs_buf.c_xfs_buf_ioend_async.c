
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_ioend_work; TYPE_1__* b_mount; } ;
struct TYPE_2__ {int m_buf_workqueue; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int xfs_buf_ioend_work ;

__attribute__((used)) static void
xfs_buf_ioend_async(
 struct xfs_buf *bp)
{
 INIT_WORK(&bp->b_ioend_work, xfs_buf_ioend_work);
 queue_work(bp->b_mount->m_buf_workqueue, &bp->b_ioend_work);
}

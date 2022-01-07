
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int dummy; } ;
struct work_struct {int dummy; } ;


 int b_ioend_work ;
 struct xfs_buf* container_of (struct work_struct*,int ,int ) ;
 int xfs_buf_ioend (struct xfs_buf*) ;
 int xfs_buf_t ;

__attribute__((used)) static void
xfs_buf_ioend_work(
 struct work_struct *work)
{
 struct xfs_buf *bp =
  container_of(work, xfs_buf_t, b_ioend_work);

 xfs_buf_ioend(bp);
}

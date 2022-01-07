
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ioend {int * io_append_trans; } ;


 int ECANCELED ;
 int xfs_setfilesize_ioend (struct xfs_ioend*,int ) ;

__attribute__((used)) static void
xfs_ioend_merge_append_transactions(
 struct xfs_ioend *ioend,
 struct xfs_ioend *next)
{
 if (!ioend->io_append_trans) {
  ioend->io_append_trans = next->io_append_trans;
  next->io_append_trans = ((void*)0);
 } else {
  xfs_setfilesize_ioend(next, -ECANCELED);
 }
}

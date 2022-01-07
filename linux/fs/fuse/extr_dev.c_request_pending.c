
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_iqueue {int interrupts; int pending; } ;


 scalar_t__ forget_pending (struct fuse_iqueue*) ;
 int list_empty (int *) ;

__attribute__((used)) static int request_pending(struct fuse_iqueue *fiq)
{
 return !list_empty(&fiq->pending) || !list_empty(&fiq->interrupts) ||
  forget_pending(fiq);
}

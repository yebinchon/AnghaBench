
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_data {int ret; int done; int stop; int wrk; int cmp_len; scalar_t__ cmp; int unc_len; int unc; int ready; int * thr; int go; } ;


 scalar_t__ LZO_HEADER ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ kthread_should_stop () ;
 int lzo1x_1_compress (int ,int ,scalar_t__,int *,int ) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int lzo_compress_threadfn(void *data)
{
 struct cmp_data *d = data;

 while (1) {
  wait_event(d->go, atomic_read(&d->ready) ||
                    kthread_should_stop());
  if (kthread_should_stop()) {
   d->thr = ((void*)0);
   d->ret = -1;
   atomic_set(&d->stop, 1);
   wake_up(&d->done);
   break;
  }
  atomic_set(&d->ready, 0);

  d->ret = lzo1x_1_compress(d->unc, d->unc_len,
                            d->cmp + LZO_HEADER, &d->cmp_len,
                            d->wrk);
  atomic_set(&d->stop, 1);
  wake_up(&d->done);
 }
 return 0;
}

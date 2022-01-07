
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dec_data {int ret; int done; int stop; scalar_t__ unc_len; scalar_t__ unc; int cmp_len; scalar_t__ cmp; int ready; int * thr; int go; } ;


 scalar_t__ LZO_HEADER ;
 scalar_t__ LZO_UNC_SIZE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ clean_pages_on_decompress ;
 int flush_icache_range (unsigned long,scalar_t__) ;
 scalar_t__ kthread_should_stop () ;
 int lzo1x_decompress_safe (scalar_t__,int ,scalar_t__,scalar_t__*) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int lzo_decompress_threadfn(void *data)
{
 struct dec_data *d = data;

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

  d->unc_len = LZO_UNC_SIZE;
  d->ret = lzo1x_decompress_safe(d->cmp + LZO_HEADER, d->cmp_len,
                                 d->unc, &d->unc_len);
  if (clean_pages_on_decompress)
   flush_icache_range((unsigned long)d->unc,
        (unsigned long)d->unc + d->unc_len);

  atomic_set(&d->stop, 1);
  wake_up(&d->done);
 }
 return 0;
}

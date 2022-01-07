
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crc_data {unsigned int run_threads; int done; int stop; int ** unc_len; int * unc; int * crc32; int ready; int * thr; int go; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int crc32_le (int ,int ,int ) ;
 scalar_t__ kthread_should_stop () ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int crc32_threadfn(void *data)
{
 struct crc_data *d = data;
 unsigned i;

 while (1) {
  wait_event(d->go, atomic_read(&d->ready) ||
                    kthread_should_stop());
  if (kthread_should_stop()) {
   d->thr = ((void*)0);
   atomic_set(&d->stop, 1);
   wake_up(&d->done);
   break;
  }
  atomic_set(&d->ready, 0);

  for (i = 0; i < d->run_threads; i++)
   *d->crc32 = crc32_le(*d->crc32,
                        d->unc[i], *d->unc_len[i]);
  atomic_set(&d->stop, 1);
  wake_up(&d->done);
 }
 return 0;
}

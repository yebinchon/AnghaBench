
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_stopped () ;
 scalar_t__ nr_sk_threads ;
 scalar_t__ threads_done () ;
 int threads_err () ;
 int usleep (int) ;

__attribute__((used)) static bool wait_for_threads_done(void)
{
 while (threads_done() != nr_sk_threads && !is_stopped() &&
        !threads_err())
  usleep(50);

 return !is_stopped() && !threads_err();
}

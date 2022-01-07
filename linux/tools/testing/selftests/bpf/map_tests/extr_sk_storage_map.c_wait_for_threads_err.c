
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_stopped () ;
 int threads_err () ;
 int usleep (int) ;

__attribute__((used)) static bool wait_for_threads_err(void)
{
 while (!is_stopped() && !threads_err())
  usleep(500);

 return !is_stopped();
}

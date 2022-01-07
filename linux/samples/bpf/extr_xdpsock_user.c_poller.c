
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_stats () ;
 int opt_interval ;
 int sleep (int ) ;

__attribute__((used)) static void *poller(void *arg)
{
 (void)arg;
 for (;;) {
  sleep(opt_interval);
  dump_stats();
 }

 return ((void*)0);
}

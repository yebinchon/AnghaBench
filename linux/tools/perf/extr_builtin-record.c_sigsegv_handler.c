
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_hooks__recover () ;
 int sighandler_dump_stack (int) ;

__attribute__((used)) static void sigsegv_handler(int sig)
{
 perf_hooks__recover();
 sighandler_dump_stack(sig);
}

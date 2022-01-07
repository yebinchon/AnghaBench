
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_gtk__exit (int) ;
 int psignal (int,char*) ;

void perf_gtk__signal(int sig)
{
 perf_gtk__exit(0);
 psignal(sig, "perf");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int psignal (int,char*) ;
 int ui__exit (int) ;

__attribute__((used)) static void ui__signal(int sig)
{
 ui__exit(0);
 psignal(sig, "perf");
 exit(0);
}

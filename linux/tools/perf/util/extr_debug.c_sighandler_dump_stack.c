
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int dump_stack () ;
 int psignal (int,char*) ;
 int raise (int) ;
 int signal (int,int ) ;

void sighandler_dump_stack(int sig)
{
 psignal(sig, "perf");
 dump_stack();
 signal(sig, SIG_DFL);
 raise(sig);
}

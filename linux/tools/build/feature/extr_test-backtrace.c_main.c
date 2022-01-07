
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,size_t,int) ;

int main(void)
{
 void *backtrace_fns[10];
 size_t entries;

 entries = backtrace(backtrace_fns, 10);
 backtrace_symbols_fd(backtrace_fns, entries, 1);

 return 0;
}

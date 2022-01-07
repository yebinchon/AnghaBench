
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_detach (int ,int ) ;
 int exit (int ) ;
 int if_idx ;
 int if_name ;
 int pb ;
 int perf_buffer__free (int ) ;

__attribute__((used)) static void sig_handler(int signo)
{
 do_detach(if_idx, if_name);
 perf_buffer__free(pb);
 exit(0);
}

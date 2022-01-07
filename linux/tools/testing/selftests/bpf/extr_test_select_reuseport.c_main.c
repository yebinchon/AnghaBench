
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_FO_SYSCTL ;
 int TCP_SYNCOOKIE_SYSCTL ;
 int atexit (int ) ;
 int cleanup () ;
 int create_maps () ;
 int disable_syncookie () ;
 int enable_fastopen () ;
 int prepare_bpf_obj () ;
 void* read_int_sysctl (int ) ;
 int restore_sysctls ;
 void* saved_tcp_fo ;
 void* saved_tcp_syncookie ;
 int test_all () ;

int main(int argc, const char **argv)
{
 create_maps();
 prepare_bpf_obj();
 saved_tcp_fo = read_int_sysctl(TCP_FO_SYSCTL);
 saved_tcp_syncookie = read_int_sysctl(TCP_SYNCOOKIE_SYSCTL);
 enable_fastopen();
 disable_syncookie();
 atexit(restore_sysctls);

 test_all();

 cleanup();
 return 0;
}

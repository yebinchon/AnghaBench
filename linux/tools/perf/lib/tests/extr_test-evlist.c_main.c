
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __T_OK ;
 int __T_START ;
 int libperf_init (int ) ;
 int libperf_print ;
 int test_stat_cpu () ;
 int test_stat_thread () ;
 int test_stat_thread_enable () ;

int main(int argc, char **argv)
{
 __T_START;

 libperf_init(libperf_print);

 test_stat_cpu();
 test_stat_thread();
 test_stat_thread_enable();

 __T_OK;
 return 0;
}

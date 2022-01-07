
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int __NR_getppid ;
 int max_cnt ;
 int printf (char*,int,int) ;
 int syscall (int ,int ) ;
 int time_get_ns () ;

__attribute__((used)) static void test_array_lookup(int cpu)
{
 __u64 start_time;
 int i;

 start_time = time_get_ns();
 for (i = 0; i < max_cnt; i++)
  syscall(__NR_getppid, 0);
 printf("%d:array_lookup %lld lookups per sec\n",
        cpu, max_cnt * 1000000000ll * 64 / (time_get_ns() - start_time));
}

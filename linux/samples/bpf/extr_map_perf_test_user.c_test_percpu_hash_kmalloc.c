
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int __NR_getegid ;
 int max_cnt ;
 int printf (char*,int,int) ;
 int syscall (int ) ;
 int time_get_ns () ;

__attribute__((used)) static void test_percpu_hash_kmalloc(int cpu)
{
 __u64 start_time;
 int i;

 start_time = time_get_ns();
 for (i = 0; i < max_cnt; i++)
  syscall(__NR_getegid);
 printf("%d:percpu_hash_map_perf kmalloc %lld events per sec\n",
        cpu, max_cnt * 1000000000ll / (time_get_ns() - start_time));
}

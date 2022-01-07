
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int __NR_getuid ;
 int max_cnt ;
 int printf (char*,int,int) ;
 int syscall (int ) ;
 int time_get_ns () ;

__attribute__((used)) static void test_hash_prealloc(int cpu)
{
 __u64 start_time;
 int i;

 start_time = time_get_ns();
 for (i = 0; i < max_cnt; i++)
  syscall(__NR_getuid);
 printf("%d:hash_map_perf pre-alloc %lld events per sec\n",
        cpu, max_cnt * 1000000000ll / (time_get_ns() - start_time));
}

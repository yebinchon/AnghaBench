
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bench_mem_info {int usage; int do_gettimeofday; int do_cycles; int functions; } ;


 int bench_mem_common (int,char const**,struct bench_mem_info*) ;
 int bench_mem_memset_usage ;
 int do_memset_cycles ;
 int do_memset_gettimeofday ;
 int memset_functions ;

int bench_mem_memset(int argc, const char **argv)
{
 struct bench_mem_info info = {
  .functions = memset_functions,
  .do_cycles = do_memset_cycles,
  .do_gettimeofday = do_memset_gettimeofday,
  .usage = bench_mem_memset_usage,
 };

 return bench_mem_common(argc, argv, &info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bench_mem_info {int alloc_src; int usage; int do_gettimeofday; int do_cycles; int functions; } ;


 int bench_mem_common (int,char const**,struct bench_mem_info*) ;
 int bench_mem_memcpy_usage ;
 int do_memcpy_cycles ;
 int do_memcpy_gettimeofday ;
 int memcpy_functions ;

int bench_mem_memcpy(int argc, const char **argv)
{
 struct bench_mem_info info = {
  .functions = memcpy_functions,
  .do_cycles = do_memcpy_cycles,
  .do_gettimeofday = do_memcpy_gettimeofday,
  .usage = bench_mem_memcpy_usage,
  .alloc_src = 1,
 };

 return bench_mem_common(argc, argv, &info);
}

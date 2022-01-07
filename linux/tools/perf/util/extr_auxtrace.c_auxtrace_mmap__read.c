
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int dummy; } ;
struct mmap {int dummy; } ;
struct auxtrace_record {int dummy; } ;
typedef int process_auxtrace_t ;


 int __auxtrace_mmap__read (struct mmap*,struct auxtrace_record*,struct perf_tool*,int ,int,int ) ;

int auxtrace_mmap__read(struct mmap *map, struct auxtrace_record *itr,
   struct perf_tool *tool, process_auxtrace_t fn)
{
 return __auxtrace_mmap__read(map, itr, tool, fn, 0, 0);
}

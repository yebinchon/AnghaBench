
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synthesize_threads_arg {int num; int start; int dirent; int mmap_data; int machine; int process; int tool; } ;


 int __perf_event__synthesize_threads (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void *synthesize_threads_worker(void *arg)
{
 struct synthesize_threads_arg *args = arg;

 __perf_event__synthesize_threads(args->tool, args->process,
      args->machine, args->mmap_data,
      args->dirent,
      args->start, args->num);
 return ((void*)0);
}

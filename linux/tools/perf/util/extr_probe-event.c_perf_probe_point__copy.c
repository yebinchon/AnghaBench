
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_point {int offset; int retprobe; int line; void* lazy_line; void* function; void* file; } ;


 int ENOMEM ;
 int clear_perf_probe_point (struct perf_probe_point*) ;
 int out_err ;
 void* strdup_or_goto (void*,int ) ;

__attribute__((used)) static int perf_probe_point__copy(struct perf_probe_point *dst,
      struct perf_probe_point *src)
{
 dst->file = strdup_or_goto(src->file, out_err);
 dst->function = strdup_or_goto(src->function, out_err);
 dst->lazy_line = strdup_or_goto(src->lazy_line, out_err);
 dst->line = src->line;
 dst->retprobe = src->retprobe;
 dst->offset = src->offset;
 return 0;

out_err:
 clear_perf_probe_point(dst);
 return -ENOMEM;
}

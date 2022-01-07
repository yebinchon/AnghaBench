
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_buffer_raw_opts {int map_keys; int cpus; int cpu_cnt; int ctx; int event_cb; int attr; } ;
struct perf_buffer_params {int map_keys; int cpus; int cpu_cnt; int ctx; int event_cb; int attr; } ;
struct perf_buffer {int dummy; } ;


 struct perf_buffer* __perf_buffer__new (int,size_t,struct perf_buffer_params*) ;

struct perf_buffer *
perf_buffer__new_raw(int map_fd, size_t page_cnt,
       const struct perf_buffer_raw_opts *opts)
{
 struct perf_buffer_params p = {};

 p.attr = opts->attr;
 p.event_cb = opts->event_cb;
 p.ctx = opts->ctx;
 p.cpu_cnt = opts->cpu_cnt;
 p.cpus = opts->cpus;
 p.map_keys = opts->map_keys;

 return __perf_buffer__new(map_fd, page_cnt, &p);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_period; int wakeup_events; int sample_type; int type; int config; int member_0; } ;
struct perf_buffer_params {int * ctx; int * lost_cb; int * sample_cb; struct perf_event_attr* attr; } ;
struct perf_buffer_opts {int * ctx; int * lost_cb; int * sample_cb; } ;
struct perf_buffer {int dummy; } ;


 int PERF_COUNT_SW_BPF_OUTPUT ;
 int PERF_SAMPLE_RAW ;
 int PERF_TYPE_SOFTWARE ;
 struct perf_buffer* __perf_buffer__new (int,size_t,struct perf_buffer_params*) ;

struct perf_buffer *perf_buffer__new(int map_fd, size_t page_cnt,
         const struct perf_buffer_opts *opts)
{
 struct perf_buffer_params p = {};
 struct perf_event_attr attr = { 0, };

 attr.config = PERF_COUNT_SW_BPF_OUTPUT,
 attr.type = PERF_TYPE_SOFTWARE;
 attr.sample_type = PERF_SAMPLE_RAW;
 attr.sample_period = 1;
 attr.wakeup_events = 1;

 p.attr = &attr;
 p.sample_cb = opts ? opts->sample_cb : ((void*)0);
 p.lost_cb = opts ? opts->lost_cb : ((void*)0);
 p.ctx = opts ? opts->ctx : ((void*)0);

 return __perf_buffer__new(map_fd, page_cnt, &p);
}

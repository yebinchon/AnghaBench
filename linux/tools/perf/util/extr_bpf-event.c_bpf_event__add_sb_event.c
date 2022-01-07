
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_id_all; int watermark; int bpf_event; int size; int wakeup_watermark; int config; int type; } ;
struct perf_env {int dummy; } ;
struct evlist {int dummy; } ;
typedef int attr ;


 int PERF_COUNT_SW_DUMMY ;
 int PERF_TYPE_SOFTWARE ;
 int bpf_event__sb_cb ;
 int perf_evlist__add_sb_event (struct evlist**,struct perf_event_attr*,int ,struct perf_env*) ;

int bpf_event__add_sb_event(struct evlist **evlist,
       struct perf_env *env)
{
 struct perf_event_attr attr = {
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_DUMMY,
  .sample_id_all = 1,
  .watermark = 1,
  .bpf_event = 1,
  .size = sizeof(attr),
 };





 attr.wakeup_watermark = 1;

 return perf_evlist__add_sb_event(evlist, &attr, bpf_event__sb_cb, env);
}

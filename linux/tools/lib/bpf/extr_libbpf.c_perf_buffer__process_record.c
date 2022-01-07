
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample_raw {int size; int data; } ;
struct perf_sample_lost {int lost; } ;
struct perf_event_header {int type; } ;
struct perf_cpu_buf {int cpu; struct perf_buffer* pb; } ;
struct perf_buffer {int (* event_cb ) (int ,int ,struct perf_event_header*) ;int ctx; int (* lost_cb ) (int ,int ,int ) ;int (* sample_cb ) (int ,int ,int ,int ) ;} ;
typedef enum bpf_perf_event_ret { ____Placeholder_bpf_perf_event_ret } bpf_perf_event_ret ;


 int LIBBPF_PERF_EVENT_CONT ;
 int LIBBPF_PERF_EVENT_ERROR ;


 int pr_warning (char*,int) ;
 int stub1 (int ,int ,struct perf_event_header*) ;
 int stub2 (int ,int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;

__attribute__((used)) static enum bpf_perf_event_ret
perf_buffer__process_record(struct perf_event_header *e, void *ctx)
{
 struct perf_cpu_buf *cpu_buf = ctx;
 struct perf_buffer *pb = cpu_buf->pb;
 void *data = e;


 if (pb->event_cb)
  return pb->event_cb(pb->ctx, cpu_buf->cpu, e);

 switch (e->type) {
 case 128: {
  struct perf_sample_raw *s = data;

  if (pb->sample_cb)
   pb->sample_cb(pb->ctx, cpu_buf->cpu, s->data, s->size);
  break;
 }
 case 129: {
  struct perf_sample_lost *s = data;

  if (pb->lost_cb)
   pb->lost_cb(pb->ctx, cpu_buf->cpu, s->lost);
  break;
 }
 default:
  pr_warning("unknown perf sample type %d\n", e->type);
  return LIBBPF_PERF_EVENT_ERROR;
 }
 return LIBBPF_PERF_EVENT_CONT;
}

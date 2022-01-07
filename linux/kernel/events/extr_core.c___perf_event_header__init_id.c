
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {scalar_t__ reserved; int cpu; } ;
struct TYPE_5__ {int tid; int pid; } ;
struct perf_sample_data {int type; TYPE_3__ cpu_entry; int stream_id; int id; int time; TYPE_2__ tid_entry; } ;
struct perf_event_header {int size; } ;
struct TYPE_4__ {int sample_type; } ;
struct perf_event {int id; scalar_t__ id_header_size; TYPE_1__ attr; } ;


 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 int current ;
 int perf_event_clock (struct perf_event*) ;
 int perf_event_pid (struct perf_event*,int ) ;
 int perf_event_tid (struct perf_event*,int ) ;
 int primary_event_id (struct perf_event*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void __perf_event_header__init_id(struct perf_event_header *header,
      struct perf_sample_data *data,
      struct perf_event *event)
{
 u64 sample_type = event->attr.sample_type;

 data->type = sample_type;
 header->size += event->id_header_size;

 if (sample_type & PERF_SAMPLE_TID) {

  data->tid_entry.pid = perf_event_pid(event, current);
  data->tid_entry.tid = perf_event_tid(event, current);
 }

 if (sample_type & PERF_SAMPLE_TIME)
  data->time = perf_event_clock(event);

 if (sample_type & (PERF_SAMPLE_ID | PERF_SAMPLE_IDENTIFIER))
  data->id = primary_event_id(event);

 if (sample_type & PERF_SAMPLE_STREAM_ID)
  data->stream_id = event->id;

 if (sample_type & PERF_SAMPLE_CPU) {
  data->cpu_entry.cpu = raw_smp_processor_id();
  data->cpu_entry.reserved = 0;
 }
}

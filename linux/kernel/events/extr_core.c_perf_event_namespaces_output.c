
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int tid; int pid; } ;
struct perf_namespaces_event {TYPE_1__ event_id; int task; } ;
struct perf_event {int dummy; } ;


 int perf_event__output_id_sample (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ;
 int perf_event_header__init_id (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ;
 int perf_event_namespaces_match (struct perf_event*) ;
 int perf_event_pid (struct perf_event*,int ) ;
 int perf_event_tid (struct perf_event*,int ) ;
 int perf_output_begin (struct perf_output_handle*,struct perf_event*,int ) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_put (struct perf_output_handle*,TYPE_1__) ;

__attribute__((used)) static void perf_event_namespaces_output(struct perf_event *event,
      void *data)
{
 struct perf_namespaces_event *namespaces_event = data;
 struct perf_output_handle handle;
 struct perf_sample_data sample;
 u16 header_size = namespaces_event->event_id.header.size;
 int ret;

 if (!perf_event_namespaces_match(event))
  return;

 perf_event_header__init_id(&namespaces_event->event_id.header,
       &sample, event);
 ret = perf_output_begin(&handle, event,
    namespaces_event->event_id.header.size);
 if (ret)
  goto out;

 namespaces_event->event_id.pid = perf_event_pid(event,
       namespaces_event->task);
 namespaces_event->event_id.tid = perf_event_tid(event,
       namespaces_event->task);

 perf_output_put(&handle, namespaces_event->event_id);

 perf_event__output_id_sample(event, &handle, &sample);

 perf_output_end(&handle);
out:
 namespaces_event->event_id.header.size = header_size;
}

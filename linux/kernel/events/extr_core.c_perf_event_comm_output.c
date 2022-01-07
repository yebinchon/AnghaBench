
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int tid; int pid; } ;
struct perf_comm_event {TYPE_1__ event_id; int comm_size; int comm; int task; } ;


 int __output_copy (struct perf_output_handle*,int ,int ) ;
 int perf_event__output_id_sample (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ;
 int perf_event_comm_match (struct perf_event*) ;
 int perf_event_header__init_id (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ;
 int perf_event_pid (struct perf_event*,int ) ;
 int perf_event_tid (struct perf_event*,int ) ;
 int perf_output_begin (struct perf_output_handle*,struct perf_event*,int) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_put (struct perf_output_handle*,TYPE_1__) ;

__attribute__((used)) static void perf_event_comm_output(struct perf_event *event,
       void *data)
{
 struct perf_comm_event *comm_event = data;
 struct perf_output_handle handle;
 struct perf_sample_data sample;
 int size = comm_event->event_id.header.size;
 int ret;

 if (!perf_event_comm_match(event))
  return;

 perf_event_header__init_id(&comm_event->event_id.header, &sample, event);
 ret = perf_output_begin(&handle, event,
    comm_event->event_id.header.size);

 if (ret)
  goto out;

 comm_event->event_id.pid = perf_event_pid(event, comm_event->task);
 comm_event->event_id.tid = perf_event_tid(event, comm_event->task);

 perf_output_put(&handle, comm_event->event_id);
 __output_copy(&handle, comm_event->comm,
       comm_event->comm_size);

 perf_event__output_id_sample(event, &handle, &sample);

 perf_output_end(&handle);
out:
 comm_event->event_id.header.size = size;
}

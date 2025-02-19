
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int time; void* ptid; void* tid; void* ppid; void* pid; } ;
struct perf_task_event {TYPE_1__ event_id; struct task_struct* task; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event {int dummy; } ;


 struct task_struct* current ;
 int perf_event__output_id_sample (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ;
 int perf_event_clock (struct perf_event*) ;
 int perf_event_header__init_id (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ;
 void* perf_event_pid (struct perf_event*,struct task_struct*) ;
 int perf_event_task_match (struct perf_event*) ;
 void* perf_event_tid (struct perf_event*,struct task_struct*) ;
 int perf_output_begin (struct perf_output_handle*,struct perf_event*,int) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_put (struct perf_output_handle*,TYPE_1__) ;

__attribute__((used)) static void perf_event_task_output(struct perf_event *event,
       void *data)
{
 struct perf_task_event *task_event = data;
 struct perf_output_handle handle;
 struct perf_sample_data sample;
 struct task_struct *task = task_event->task;
 int ret, size = task_event->event_id.header.size;

 if (!perf_event_task_match(event))
  return;

 perf_event_header__init_id(&task_event->event_id.header, &sample, event);

 ret = perf_output_begin(&handle, event,
    task_event->event_id.header.size);
 if (ret)
  goto out;

 task_event->event_id.pid = perf_event_pid(event, task);
 task_event->event_id.ppid = perf_event_pid(event, current);

 task_event->event_id.tid = perf_event_tid(event, task);
 task_event->event_id.ptid = perf_event_tid(event, current);

 task_event->event_id.time = perf_event_clock(event);

 perf_output_put(&handle, task_event->event_id);

 perf_event__output_id_sample(event, &handle, &sample);

 perf_output_end(&handle);
out:
 task_event->event_id.header.size = size;
}

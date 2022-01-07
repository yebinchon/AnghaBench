
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int size; } ;
union perf_event {TYPE_1__ header; } ;
struct perf_session {int dummy; } ;
struct perf_record_auxtrace {int dummy; } ;
struct auxtrace_queues {int dummy; } ;
typedef size_t off_t ;


 int EINVAL ;
 scalar_t__ PERF_RECORD_AUXTRACE ;
 int PERF_SAMPLE_MAX_SIZE ;
 int auxtrace_queues__add_event (struct auxtrace_queues*,struct perf_session*,union perf_event*,size_t,int *) ;
 int perf_session__peek_event (struct perf_session*,size_t,char*,int,union perf_event**,int *) ;

__attribute__((used)) static int auxtrace_queues__add_indexed_event(struct auxtrace_queues *queues,
           struct perf_session *session,
           off_t file_offset, size_t sz)
{
 union perf_event *event;
 int err;
 char buf[PERF_SAMPLE_MAX_SIZE];

 err = perf_session__peek_event(session, file_offset, buf,
           PERF_SAMPLE_MAX_SIZE, &event, ((void*)0));
 if (err)
  return err;

 if (event->header.type == PERF_RECORD_AUXTRACE) {
  if (event->header.size < sizeof(struct perf_record_auxtrace) ||
      event->header.size != sz) {
   err = -EINVAL;
   goto out;
  }
  file_offset += event->header.size;
  err = auxtrace_queues__add_event(queues, session, event,
       file_offset, ((void*)0));
 }
out:
 return err;
}

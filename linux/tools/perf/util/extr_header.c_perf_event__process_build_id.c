
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; } ;
union perf_event {TYPE_1__ build_id; } ;
struct perf_session {int dummy; } ;


 int __event_process_build_id (TYPE_1__*,int ,struct perf_session*) ;

int perf_event__process_build_id(struct perf_session *session,
     union perf_event *event)
{
 __event_process_build_id(&event->build_id,
     event->build_id.filename,
     session);
 return 0;
}

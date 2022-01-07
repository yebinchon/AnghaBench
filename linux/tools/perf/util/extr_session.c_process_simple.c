
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_session {int dummy; } ;
typedef int s64 ;


 int perf_session__process_event (struct perf_session*,union perf_event*,int ) ;

__attribute__((used)) static s64 process_simple(struct perf_session *session,
     union perf_event *event,
     u64 file_offset)
{
 return perf_session__process_event(session, event, file_offset);
}

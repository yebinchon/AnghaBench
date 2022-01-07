
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int data; } ;


 int ENOMEM ;
 int __perf_session__process_events (struct perf_session*) ;
 int __perf_session__process_pipe_events (struct perf_session*) ;
 scalar_t__ perf_data__is_pipe (int ) ;
 scalar_t__ perf_session__register_idle_thread (struct perf_session*) ;

int perf_session__process_events(struct perf_session *session)
{
 if (perf_session__register_idle_thread(session) < 0)
  return -ENOMEM;

 if (perf_data__is_pipe(session->data))
  return __perf_session__process_pipe_events(session);

 return __perf_session__process_events(session);
}

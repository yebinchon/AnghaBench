
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_session {int tool; } ;


 int perf_event__process_id_index (struct perf_session*,union perf_event*) ;
 int perf_event__repipe_synth (int ,union perf_event*) ;

__attribute__((used)) static int perf_event__repipe_id_index(struct perf_session *session,
           union perf_event *event)
{
 int err;

 perf_event__repipe_synth(session->tool, event);
 err = perf_event__process_id_index(session, event);

 return err;
}

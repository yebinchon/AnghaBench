
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_tool {int dummy; } ;
struct perf_session {int evlist; int machines; } ;
struct perf_sample {int dummy; } ;


 int auxtrace__process_event (struct perf_session*,union perf_event*,struct perf_sample*,struct perf_tool*) ;
 int machines__deliver_event (int *,int ,union perf_event*,struct perf_sample*,struct perf_tool*,int ) ;
 int perf_evlist__parse_sample (int ,union perf_event*,struct perf_sample*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int perf_session__deliver_event(struct perf_session *session,
           union perf_event *event,
           struct perf_tool *tool,
           u64 file_offset)
{
 struct perf_sample sample;
 int ret;

 ret = perf_evlist__parse_sample(session->evlist, event, &sample);
 if (ret) {
  pr_err("Can't parse sample, err = %d\n", ret);
  return ret;
 }

 ret = auxtrace__process_event(session, event, &sample, tool);
 if (ret < 0)
  return ret;
 if (ret > 0)
  return 0;

 return machines__deliver_event(&session->machines, session->evlist,
           event, &sample, tool, file_offset);
}

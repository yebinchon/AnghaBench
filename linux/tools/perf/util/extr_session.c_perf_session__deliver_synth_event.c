
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
struct perf_tool {int dummy; } ;
struct perf_session {int machines; struct perf_tool* tool; struct evlist* evlist; } ;
struct perf_sample {int dummy; } ;
struct evlist {int stats; } ;


 int PERF_RECORD_USER_TYPE_START ;
 int events_stats__inc (int *,int ) ;
 int machines__deliver_event (int *,struct evlist*,union perf_event*,struct perf_sample*,struct perf_tool*,int ) ;
 int perf_session__process_user_event (struct perf_session*,union perf_event*,int ) ;

int perf_session__deliver_synth_event(struct perf_session *session,
          union perf_event *event,
          struct perf_sample *sample)
{
 struct evlist *evlist = session->evlist;
 struct perf_tool *tool = session->tool;

 events_stats__inc(&evlist->stats, event->header.type);

 if (event->header.type >= PERF_RECORD_USER_TYPE_START)
  return perf_session__process_user_event(session, event, 0);

 return machines__deliver_event(&session->machines, evlist, event, sample, tool, 0);
}

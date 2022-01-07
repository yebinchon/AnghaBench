
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_session {int dummy; } ;
struct perf_event_attr {int dummy; } ;
struct cs_etm_synth {int dummy_tool; struct perf_session* session; } ;


 int cs_etm__event_synth ;
 int memset (struct cs_etm_synth*,int ,int) ;
 int perf_event__synthesize_attr (int *,struct perf_event_attr*,int,int *,int ) ;

__attribute__((used)) static int cs_etm__synth_event(struct perf_session *session,
          struct perf_event_attr *attr, u64 id)
{
 struct cs_etm_synth cs_etm_synth;

 memset(&cs_etm_synth, 0, sizeof(struct cs_etm_synth));
 cs_etm_synth.session = session;

 return perf_event__synthesize_attr(&cs_etm_synth.dummy_tool, attr, 1,
        &id, cs_etm__event_synth);
}

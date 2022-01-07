
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_session {int dummy; } ;
struct perf_event_attr {int dummy; } ;
struct intel_bts_synth {int dummy_tool; struct perf_session* session; } ;


 int intel_bts_event_synth ;
 int memset (struct intel_bts_synth*,int ,int) ;
 int perf_event__synthesize_attr (int *,struct perf_event_attr*,int,int *,int ) ;

__attribute__((used)) static int intel_bts_synth_event(struct perf_session *session,
     struct perf_event_attr *attr, u64 id)
{
 struct intel_bts_synth intel_bts_synth;

 memset(&intel_bts_synth, 0, sizeof(struct intel_bts_synth));
 intel_bts_synth.session = session;

 return perf_event__synthesize_attr(&intel_bts_synth.dummy_tool, attr, 1,
        &id, intel_bts_event_synth);
}

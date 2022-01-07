
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int env; } ;
struct perf_session {scalar_t__ data; int machines; TYPE_1__ header; int auxtrace_index; } ;


 int auxtrace__free (struct perf_session*) ;
 int auxtrace_index__free (int *) ;
 int free (struct perf_session*) ;
 int machines__exit (int *) ;
 int perf_data__close (scalar_t__) ;
 int perf_env__exit (int *) ;
 int perf_session__delete_threads (struct perf_session*) ;
 int perf_session__destroy_kernel_maps (struct perf_session*) ;
 int perf_session__release_decomp_events (struct perf_session*) ;

void perf_session__delete(struct perf_session *session)
{
 if (session == ((void*)0))
  return;
 auxtrace__free(session);
 auxtrace_index__free(&session->auxtrace_index);
 perf_session__destroy_kernel_maps(session);
 perf_session__delete_threads(session);
 perf_session__release_decomp_events(session);
 perf_env__exit(&session->header.env);
 machines__exit(&session->machines);
 if (session->data)
  perf_data__close(session->data);
 free(session);
}

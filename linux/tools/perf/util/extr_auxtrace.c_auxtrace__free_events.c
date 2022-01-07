
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {TYPE_1__* auxtrace; } ;
struct TYPE_2__ {void (* free_events ) (struct perf_session*) ;} ;


 void stub1 (struct perf_session*) ;

void auxtrace__free_events(struct perf_session *session)
{
 if (!session->auxtrace)
  return;

 return session->auxtrace->free_events(session);
}

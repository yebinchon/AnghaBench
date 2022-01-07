
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_tool {int dummy; } ;
struct perf_session {TYPE_1__* auxtrace; } ;
struct TYPE_2__ {int (* flush_events ) (struct perf_session*,struct perf_tool*) ;} ;


 int stub1 (struct perf_session*,struct perf_tool*) ;

int auxtrace__flush_events(struct perf_session *session, struct perf_tool *tool)
{
 if (!session->auxtrace)
  return 0;

 return session->auxtrace->flush_events(session, tool);
}

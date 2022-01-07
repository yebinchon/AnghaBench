
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct report {struct perf_session* session; } ;
struct perf_session {int dummy; } ;


 int perf_session__fprintf_nr_events (struct perf_session*,int ) ;
 int stdout ;

__attribute__((used)) static int stats_print(struct report *rep)
{
 struct perf_session *session = rep->session;

 perf_session__fprintf_nr_events(session, stdout);
 return 0;
}

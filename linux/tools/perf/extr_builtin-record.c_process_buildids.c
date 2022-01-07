
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sample; } ;
struct record {TYPE_1__ tool; int timestamp_boundary; scalar_t__ buildid_all; int data; struct perf_session* session; } ;
struct perf_session {int dummy; } ;
struct TYPE_4__ {int ignore_vmlinux_buildid; } ;


 scalar_t__ perf_data__size (int *) ;
 int perf_session__process_events (struct perf_session*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static int process_buildids(struct record *rec)
{
 struct perf_session *session = rec->session;

 if (perf_data__size(&rec->data) == 0)
  return 0;
 symbol_conf.ignore_vmlinux_buildid = 1;







 if (rec->buildid_all && !rec->timestamp_boundary)
  rec->tool.sample = ((void*)0);

 return perf_session__process_events(session);
}

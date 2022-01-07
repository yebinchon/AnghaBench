
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int id; } ;
struct TYPE_3__ {scalar_t__ type; } ;
union perf_event {TYPE_2__ bpf; TYPE_1__ header; } ;
struct perf_env {int dummy; } ;




 scalar_t__ PERF_RECORD_BPF_EVENT ;
 int perf_env__add_bpf_info (struct perf_env*,int ) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int bpf_event__sb_cb(union perf_event *event, void *data)
{
 struct perf_env *env = data;

 if (event->header.type != PERF_RECORD_BPF_EVENT)
  return -1;

 switch (event->bpf.type) {
 case 129:
  perf_env__add_bpf_info(env, event->bpf.id);

 case 128:





  break;
 default:
  pr_debug("unexpected bpf event type of %d\n", event->bpf.type);
  break;
 }

 return 0;
}

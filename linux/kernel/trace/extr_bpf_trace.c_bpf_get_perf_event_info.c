
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {scalar_t__ type; } ;
struct perf_event {TYPE_3__ attr; TYPE_4__* tp_event; struct bpf_prog* prog; } ;
struct bpf_prog {scalar_t__ type; TYPE_1__* aux; } ;
struct TYPE_8__ {int flags; char* name; TYPE_2__* tp; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int id; } ;


 int BPF_FD_TYPE_TRACEPOINT ;
 scalar_t__ BPF_PROG_TYPE_PERF_EVENT ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_TYPE_TRACEPOINT ;
 int TRACE_EVENT_FL_KPROBE ;
 int TRACE_EVENT_FL_TRACEPOINT ;
 int TRACE_EVENT_FL_UPROBE ;
 int bpf_get_kprobe_info (struct perf_event const*,int *,char const**,int*,int*,int) ;
 int bpf_get_uprobe_info (struct perf_event const*,int *,char const**,int*,int) ;
 int is_syscall_trace_event (TYPE_4__*) ;

int bpf_get_perf_event_info(const struct perf_event *event, u32 *prog_id,
       u32 *fd_type, const char **buf,
       u64 *probe_offset, u64 *probe_addr)
{
 bool is_tracepoint, is_syscall_tp;
 struct bpf_prog *prog;
 int flags, err = 0;

 prog = event->prog;
 if (!prog)
  return -ENOENT;


 if (prog->type == BPF_PROG_TYPE_PERF_EVENT)
  return -EOPNOTSUPP;

 *prog_id = prog->aux->id;
 flags = event->tp_event->flags;
 is_tracepoint = flags & TRACE_EVENT_FL_TRACEPOINT;
 is_syscall_tp = is_syscall_trace_event(event->tp_event);

 if (is_tracepoint || is_syscall_tp) {
  *buf = is_tracepoint ? event->tp_event->tp->name
         : event->tp_event->name;
  *fd_type = BPF_FD_TYPE_TRACEPOINT;
  *probe_offset = 0x0;
  *probe_addr = 0x0;
 } else {

  err = -EOPNOTSUPP;
 }

 return err;
}

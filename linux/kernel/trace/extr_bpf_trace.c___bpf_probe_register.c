
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tracepoint {int dummy; } ;
struct bpf_raw_event_map {int num_args; scalar_t__ writable_size; scalar_t__ bpf_func; struct tracepoint* tp; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int max_ctx_offset; scalar_t__ max_tp_access; } ;


 int EINVAL ;
 int tracepoint_probe_register (struct tracepoint*,void*,struct bpf_prog*) ;

__attribute__((used)) static int __bpf_probe_register(struct bpf_raw_event_map *btp, struct bpf_prog *prog)
{
 struct tracepoint *tp = btp->tp;





 if (prog->aux->max_ctx_offset > btp->num_args * sizeof(u64))
  return -EINVAL;

 if (prog->aux->max_tp_access > btp->writable_size)
  return -EINVAL;

 return tracepoint_probe_register(tp, (void *)btp->bpf_func, prog);
}

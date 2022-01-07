
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int refcnt; } ;


 int PERF_BPF_EVENT_PROG_UNLOAD ;
 int __bpf_prog_put_noref (struct bpf_prog*,int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bpf_prog_free_id (struct bpf_prog*,int) ;
 int perf_event_bpf_event (struct bpf_prog*,int ,int ) ;

__attribute__((used)) static void __bpf_prog_put(struct bpf_prog *prog, bool do_idr_lock)
{
 if (atomic_dec_and_test(&prog->aux->refcnt)) {
  perf_event_bpf_event(prog, PERF_BPF_EVENT_PROG_UNLOAD, 0);

  bpf_prog_free_id(prog, do_idr_lock);
  __bpf_prog_put_noref(prog, 1);
 }
}

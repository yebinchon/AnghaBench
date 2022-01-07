
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct intel_bts_queue {int intel_pt_insn; int tid; TYPE_1__* bts; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {struct machine* machine; } ;


 int INTEL_PT_INSN_BUF_SZ ;
 scalar_t__ intel_pt_get_insn (unsigned char*,scalar_t__,int,int *) ;
 struct thread* machine__find_thread (struct machine*,int,int ) ;
 scalar_t__ thread__memcpy (struct thread*,struct machine*,unsigned char*,int ,int,int*) ;
 int thread__put (struct thread*) ;

__attribute__((used)) static int intel_bts_get_next_insn(struct intel_bts_queue *btsq, u64 ip)
{
 struct machine *machine = btsq->bts->machine;
 struct thread *thread;
 unsigned char buf[INTEL_PT_INSN_BUF_SZ];
 ssize_t len;
 bool x86_64;
 int err = -1;

 thread = machine__find_thread(machine, -1, btsq->tid);
 if (!thread)
  return -1;

 len = thread__memcpy(thread, machine, buf, ip, INTEL_PT_INSN_BUF_SZ, &x86_64);
 if (len <= 0)
  goto out_put;

 if (intel_pt_get_insn(buf, len, x86_64, &btsq->intel_pt_insn))
  goto out_put;

 err = 0;
out_put:
 thread__put(thread);
 return err;
}

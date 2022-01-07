
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_sample {int insn_len; int insn; int ip; } ;
struct machine {int dummy; } ;
struct insn {int length; } ;


 scalar_t__ insn_complete (struct insn*) ;
 int insn_get_length (struct insn*) ;
 int insn_init (struct insn*,int ,int,int) ;
 int thread__memcpy (struct thread*,struct machine*,int ,int ,int,int*) ;

void arch_fetch_insn(struct perf_sample *sample,
       struct thread *thread,
       struct machine *machine)
{
 struct insn insn;
 int len;
 bool is64bit = 0;

 if (!sample->ip)
  return;
 len = thread__memcpy(thread, machine, sample->insn, sample->ip, sizeof(sample->insn), &is64bit);
 if (len <= 0)
  return;
 insn_init(&insn, sample->insn, len, is64bit);
 insn_get_length(&insn);
 if (insn_complete(&insn) && insn.length <= len)
  sample->insn_len = insn.length;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int dummy; } ;
struct regs_dump {int mask; int * regs; int abi; } ;
struct perf_sample {struct regs_dump user_regs; } ;


 int PERF_REGS_MASK ;
 int PERF_REGS_MAX ;
 int PERF_SAMPLE_REGS_ABI ;
 int * malloc (int) ;
 int perf_regs_load (int *) ;
 int pr_debug (char*) ;
 int sample_ustack (struct perf_sample*,struct thread*,int *) ;

int test__arch_unwind_sample(struct perf_sample *sample,
        struct thread *thread)
{
 struct regs_dump *regs = &sample->user_regs;
 u64 *buf;

 buf = malloc(sizeof(u64) * PERF_REGS_MAX);
 if (!buf) {
  pr_debug("failed to allocate sample uregs data\n");
  return -1;
 }

 perf_regs_load(buf);
 regs->abi = PERF_SAMPLE_REGS_ABI;
 regs->regs = buf;
 regs->mask = PERF_REGS_MASK;

 return sample_ustack(sample, thread, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct perf_env {scalar_t__ cpuid; } ;
struct ip_callchain {int dummy; } ;
struct intel_pt_queue {unsigned int queue_nr; int pid; int tid; int cpu; int next_tid; void* chain; void* last_branch_rb; void* last_branch; void* event_buf; int decoder; int exclude_kernel; struct intel_pt* pt; } ;
struct intel_pt_params {int period; int flags; void* period_type; int pgd_ip; int tsc_ctc_ratio_d; int tsc_ctc_ratio_n; int mtc_period; int max_non_turbo_ratio; int branch_enable; int return_compression; struct intel_pt_queue* data; int lookahead; int walk_insn; int get_trace; } ;
struct TYPE_6__ {int callchain_sz; int last_branch_sz; int period; int period_type; scalar_t__ instructions; scalar_t__ last_branch; scalar_t__ callchain; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct intel_pt {TYPE_3__ synth_opts; TYPE_2__ filts; int tsc_ctc_ratio_d; int tsc_ctc_ratio_n; int max_non_turbo_ratio; TYPE_1__* machine; } ;
struct branch_stack {int dummy; } ;
struct branch_entry {int dummy; } ;
struct TYPE_4__ {struct perf_env* env; } ;


 int INTEL_PT_FUP_WITH_NLIP ;
 void* INTEL_PT_PERIOD_INSTRUCTIONS ;
 void* INTEL_PT_PERIOD_TICKS ;



 int PERF_SAMPLE_MAX_SIZE ;
 int free (struct intel_pt_queue*) ;
 int intel_pt_branch_enable (struct intel_pt*) ;
 int intel_pt_decoder_new (struct intel_pt_params*) ;
 int intel_pt_exclude_kernel (struct intel_pt*) ;
 int intel_pt_get_trace ;
 int intel_pt_lookahead ;
 int intel_pt_mtc_period (struct intel_pt*) ;
 int intel_pt_ns_to_ticks (struct intel_pt*,int) ;
 int intel_pt_pgd_ip ;
 int intel_pt_return_compression (struct intel_pt*) ;
 int intel_pt_walk_next_insn ;
 void* malloc (int ) ;
 int strncmp (scalar_t__,char*,int) ;
 void* zalloc (size_t) ;
 int zfree (void**) ;

__attribute__((used)) static struct intel_pt_queue *intel_pt_alloc_queue(struct intel_pt *pt,
         unsigned int queue_nr)
{
 struct intel_pt_params params = { .get_trace = 0, };
 struct perf_env *env = pt->machine->env;
 struct intel_pt_queue *ptq;

 ptq = zalloc(sizeof(struct intel_pt_queue));
 if (!ptq)
  return ((void*)0);

 if (pt->synth_opts.callchain) {
  size_t sz = sizeof(struct ip_callchain);


  sz += (pt->synth_opts.callchain_sz + 1) * sizeof(u64);
  ptq->chain = zalloc(sz);
  if (!ptq->chain)
   goto out_free;
 }

 if (pt->synth_opts.last_branch) {
  size_t sz = sizeof(struct branch_stack);

  sz += pt->synth_opts.last_branch_sz *
        sizeof(struct branch_entry);
  ptq->last_branch = zalloc(sz);
  if (!ptq->last_branch)
   goto out_free;
  ptq->last_branch_rb = zalloc(sz);
  if (!ptq->last_branch_rb)
   goto out_free;
 }

 ptq->event_buf = malloc(PERF_SAMPLE_MAX_SIZE);
 if (!ptq->event_buf)
  goto out_free;

 ptq->pt = pt;
 ptq->queue_nr = queue_nr;
 ptq->exclude_kernel = intel_pt_exclude_kernel(pt);
 ptq->pid = -1;
 ptq->tid = -1;
 ptq->cpu = -1;
 ptq->next_tid = -1;

 params.get_trace = intel_pt_get_trace;
 params.walk_insn = intel_pt_walk_next_insn;
 params.lookahead = intel_pt_lookahead;
 params.data = ptq;
 params.return_compression = intel_pt_return_compression(pt);
 params.branch_enable = intel_pt_branch_enable(pt);
 params.max_non_turbo_ratio = pt->max_non_turbo_ratio;
 params.mtc_period = intel_pt_mtc_period(pt);
 params.tsc_ctc_ratio_n = pt->tsc_ctc_ratio_n;
 params.tsc_ctc_ratio_d = pt->tsc_ctc_ratio_d;

 if (pt->filts.cnt > 0)
  params.pgd_ip = intel_pt_pgd_ip;

 if (pt->synth_opts.instructions) {
  if (pt->synth_opts.period) {
   switch (pt->synth_opts.period_type) {
   case 130:
    params.period_type =
      INTEL_PT_PERIOD_INSTRUCTIONS;
    params.period = pt->synth_opts.period;
    break;
   case 128:
    params.period_type = INTEL_PT_PERIOD_TICKS;
    params.period = pt->synth_opts.period;
    break;
   case 129:
    params.period_type = INTEL_PT_PERIOD_TICKS;
    params.period = intel_pt_ns_to_ticks(pt,
       pt->synth_opts.period);
    break;
   default:
    break;
   }
  }

  if (!params.period) {
   params.period_type = INTEL_PT_PERIOD_INSTRUCTIONS;
   params.period = 1;
  }
 }

 if (env->cpuid && !strncmp(env->cpuid, "GenuineIntel,6,92,", 18))
  params.flags |= INTEL_PT_FUP_WITH_NLIP;

 ptq->decoder = intel_pt_decoder_new(&params);
 if (!ptq->decoder)
  goto out_free;

 return ptq;

out_free:
 zfree(&ptq->event_buf);
 zfree(&ptq->last_branch);
 zfree(&ptq->last_branch_rb);
 zfree(&ptq->chain);
 free(ptq);
 return ((void*)0);
}

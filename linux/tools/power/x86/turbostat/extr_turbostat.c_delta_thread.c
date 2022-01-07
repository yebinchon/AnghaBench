
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_data {int tsc; int c1; scalar_t__ aperf; int mperf; int cpu_id; scalar_t__* counter; scalar_t__ smi_count; scalar_t__ irq_count; int tv_end; int tv_begin; int tv_delta; int x2apic_id; int apic_id; } ;
struct msr_counter {scalar_t__ format; struct msr_counter* next; } ;
struct core_data {int c3; int c6; int c7; } ;
struct TYPE_2__ {struct msr_counter* tp; } ;


 int BIC_APIC ;
 int BIC_Avg_MHz ;
 int BIC_Busy ;
 int BIC_Bzy_MHz ;
 int BIC_IRQ ;
 int BIC_SMI ;
 int BIC_X2APIC ;
 scalar_t__ DO_BIC (int ) ;
 scalar_t__ FORMAT_RAW ;
 int debug ;
 int errx (int,char*) ;
 int fprintf (int ,char*,int) ;
 int outf ;
 scalar_t__ soft_c1_residency_display (int ) ;
 TYPE_1__ sys ;
 int timersub (int *,int *,int *) ;
 int tsc_tweak ;
 scalar_t__ use_c1_residency_msr ;

int
delta_thread(struct thread_data *new, struct thread_data *old,
 struct core_data *core_delta)
{
 int i;
 struct msr_counter *mp;


 if (DO_BIC(BIC_APIC))
  new->apic_id = old->apic_id;
 if (DO_BIC(BIC_X2APIC))
  new->x2apic_id = old->x2apic_id;







 timersub(&new->tv_begin, &old->tv_begin, &old->tv_delta);
 old->tv_begin = new->tv_begin;
 old->tv_end = new->tv_end;

 old->tsc = new->tsc - old->tsc;


 if (old->tsc < (1000 * 1000))
  errx(-3, "Insanely slow TSC rate, TSC stops in idle?\n"
       "You can disable all c-states by booting with \"idle=poll\"\n"
       "or just the deep ones with \"processor.max_cstate=1\"");

 old->c1 = new->c1 - old->c1;

 if (DO_BIC(BIC_Avg_MHz) || DO_BIC(BIC_Busy) || DO_BIC(BIC_Bzy_MHz) ||
     soft_c1_residency_display(BIC_Avg_MHz)) {
  if ((new->aperf > old->aperf) && (new->mperf > old->mperf)) {
   old->aperf = new->aperf - old->aperf;
   old->mperf = new->mperf - old->mperf;
  } else {
   return -1;
  }
 }


 if (use_c1_residency_msr) {




 } else {





  if ((old->mperf + core_delta->c3 + core_delta->c6 + core_delta->c7) > (old->tsc * tsc_tweak))
   old->c1 = 0;
  else {

   old->c1 = (old->tsc * tsc_tweak) - old->mperf - core_delta->c3
    - core_delta->c6 - core_delta->c7;
  }
 }

 if (old->mperf == 0) {
  if (debug > 1)
   fprintf(outf, "cpu%d MPERF 0!\n", old->cpu_id);
  old->mperf = 1;
 }

 if (DO_BIC(BIC_IRQ))
  old->irq_count = new->irq_count - old->irq_count;

 if (DO_BIC(BIC_SMI))
  old->smi_count = new->smi_count - old->smi_count;

 for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   old->counter[i] = new->counter[i];
  else
   old->counter[i] = new->counter[i] - old->counter[i];
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int en; } ;
struct TYPE_3__ {int en; } ;
union msr_pstate {unsigned long long val; TYPE_2__ bits; TYPE_1__ fam17h_bits; } ;


 int MAX_HW_PSTATES ;
 scalar_t__ MSR_AMD_PSTATE ;
 scalar_t__ MSR_AMD_PSTATE_LIMIT ;
 scalar_t__ MSR_AMD_PSTATE_STATUS ;
 int fprintf (int ,char*,int,int) ;
 unsigned long get_cof (unsigned int,union msr_pstate) ;
 scalar_t__ read_msr (unsigned int,scalar_t__,unsigned long long*) ;
 int stderr ;

int decode_pstates(unsigned int cpu, unsigned int cpu_family,
     int boost_states, unsigned long *pstates, int *no)
{
 int i, psmax, pscur;
 union msr_pstate pstate;
 unsigned long long val;





 if (cpu_family < 0x10 || cpu_family == 0x14)
  return -1;

 if (read_msr(cpu, MSR_AMD_PSTATE_LIMIT, &val))
  return -1;

 psmax = (val >> 4) & 0x7;

 if (read_msr(cpu, MSR_AMD_PSTATE_STATUS, &val))
  return -1;

 pscur = val & 0x7;

 pscur += boost_states;
 psmax += boost_states;
 for (i = 0; i <= psmax; i++) {
  if (i >= MAX_HW_PSTATES) {
   fprintf(stderr, "HW pstates [%d] exceeding max [%d]\n",
    psmax, MAX_HW_PSTATES);
   return -1;
  }
  if (read_msr(cpu, MSR_AMD_PSTATE + i, &pstate.val))
   return -1;
  if ((cpu_family == 0x17) && (!pstate.fam17h_bits.en))
   continue;
  else if (!pstate.bits.en)
   continue;

  pstates[i] = get_cof(cpu_family, pstate);
 }
 *no = i;
 return 0;
}

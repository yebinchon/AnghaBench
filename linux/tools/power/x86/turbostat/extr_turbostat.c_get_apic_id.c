
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {unsigned int apic_id; unsigned int x2apic_id; int cpu_id; } ;


 int BIC_APIC ;
 int BIC_X2APIC ;
 scalar_t__ DO_BIC (int ) ;
 int __cpuid (int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ authentic_amd ;
 scalar_t__ debug ;
 int fprintf (int ,char*,int,int,int) ;
 int genuine_intel ;
 scalar_t__ hygon_genuine ;
 int max_extended_level ;
 int max_level ;
 int outf ;

void get_apic_id(struct thread_data *t)
{
 unsigned int eax, ebx, ecx, edx;

 if (DO_BIC(BIC_APIC)) {
  eax = ebx = ecx = edx = 0;
  __cpuid(1, eax, ebx, ecx, edx);

  t->apic_id = (ebx >> 24) & 0xff;
 }

 if (!DO_BIC(BIC_X2APIC))
  return;

 if (authentic_amd || hygon_genuine) {
  unsigned int topology_extensions;

  if (max_extended_level < 0x8000001e)
   return;

  eax = ebx = ecx = edx = 0;
  __cpuid(0x80000001, eax, ebx, ecx, edx);
   topology_extensions = ecx & (1 << 22);

  if (topology_extensions == 0)
   return;

  eax = ebx = ecx = edx = 0;
  __cpuid(0x8000001e, eax, ebx, ecx, edx);

  t->x2apic_id = eax;
  return;
 }

 if (!genuine_intel)
  return;

 if (max_level < 0xb)
  return;

 ecx = 0;
 __cpuid(0xb, eax, ebx, ecx, edx);
 t->x2apic_id = edx;

 if (debug && (t->apic_id != (t->x2apic_id & 0xff)))
  fprintf(outf, "cpu%d: BIOS BUG: apic 0x%x x2apic 0x%x\n",
    t->cpu_id, t->apic_id, t->x2apic_id);
}

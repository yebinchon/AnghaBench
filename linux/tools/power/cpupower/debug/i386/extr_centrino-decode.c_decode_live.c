
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_PERF_STATUS ;
 int decode (unsigned int) ;
 int printf (char*,...) ;
 int rdmsr (unsigned int,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int decode_live(unsigned int cpu)
{
 unsigned int lo, hi;
 int err;

 err = rdmsr(cpu, MSR_IA32_PERF_STATUS, &lo, &hi);

 if (err) {
  printf("can't get MSR_IA32_PERF_STATUS for cpu %d\n", cpu);
  printf("Possible trouble: you don't run an Enhanced SpeedStep capable cpu\n");
  printf("or you are not root, or the msr driver is not present\n");
  return 1;
 }

 decode(lo);

 return 0;
}

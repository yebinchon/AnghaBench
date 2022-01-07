
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,char*,char*,unsigned long long,double,char*) ;
 int outf ;
 unsigned long long rapl_power_units ;
 double rapl_time_units ;

void print_power_limit_msr(int cpu, unsigned long long msr, char *label)
{
 fprintf(outf, "cpu%d: %s: %sabled (%f Watts, %f sec, clamp %sabled)\n",
  cpu, label,
  ((msr >> 15) & 1) ? "EN" : "DIS",
  ((msr >> 0) & 0x7FFF) * rapl_power_units,
  (1.0 + (((msr >> 22) & 0x3)/4.0)) * (1 << ((msr >> 17) & 0x1F)) * rapl_time_units,
  (((msr >> 16) & 1) ? "EN" : "DIS"));

 return;
}

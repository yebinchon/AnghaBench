
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_cap {int lowest; int efficient; int guaranteed; int highest; } ;


 int printf (char*,int,...) ;

void print_hwp_cap(int cpu, struct msr_hwp_cap *cap, char *str)
{
 if (cpu != -1)
  printf("cpu%d: ", cpu);

 printf("HWP_CAP: low %d eff %d guar %d high %d\n",
  cap->lowest, cap->efficient, cap->guaranteed, cap->highest);
}

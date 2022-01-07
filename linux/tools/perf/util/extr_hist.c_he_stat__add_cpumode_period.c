
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct he_stat {int period_guest_us; int period_guest_sys; int period_us; int period_sys; } ;







__attribute__((used)) static void he_stat__add_cpumode_period(struct he_stat *he_stat,
     unsigned int cpumode, u64 period)
{
 switch (cpumode) {
 case 129:
  he_stat->period_sys += period;
  break;
 case 128:
  he_stat->period_us += period;
  break;
 case 131:
  he_stat->period_guest_sys += period;
  break;
 case 130:
  he_stat->period_guest_us += period;
  break;
 default:
  break;
 }
}

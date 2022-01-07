
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_idle_force_poll ;

void cpu_idle_poll_ctrl(bool enable)
{
 if (enable) {
  cpu_idle_force_poll++;
 } else {
  cpu_idle_force_poll--;
  WARN_ON_ONCE(cpu_idle_force_poll < 0);
 }
}

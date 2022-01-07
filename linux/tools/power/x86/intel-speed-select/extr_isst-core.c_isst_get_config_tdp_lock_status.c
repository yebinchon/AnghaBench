
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long BIT (int) ;
 int isst_send_msr_command (int,int,int ,unsigned long long*) ;

int isst_get_config_tdp_lock_status(int cpu)
{
 unsigned long long tdp_control = 0;
 int ret;

 ret = isst_send_msr_command(cpu, 0x64b, 0, &tdp_control);
 if (ret)
  return ret;

 ret = !!(tdp_control & BIT(31));

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isst_send_msr_command (int,int,int,unsigned long long*) ;

int isst_set_trl(int cpu, unsigned long long trl)
{
 int ret;

 if (!trl)
  trl = 0xFFFFFFFFFFFFFFFFULL;

 ret = isst_send_msr_command(cpu, 0x1AD, 1, &trl);
 if (ret)
  return ret;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp {int current_level; } ;


 int isst_get_ctdp_levels (int,struct isst_pkg_ctdp*) ;
 int isst_get_get_trl (int,int ,int ,int*) ;
 int isst_send_msr_command (int,int,int,unsigned long long*) ;

int isst_set_trl_from_current_tdp(int cpu, unsigned long long trl)
{
 unsigned long long msr_trl;
 int ret;

 if (trl) {
  msr_trl = trl;
 } else {
  struct isst_pkg_ctdp pkg_dev;
  int trl[8];
  int i;

  ret = isst_get_ctdp_levels(cpu, &pkg_dev);
  if (ret)
   return ret;

  ret = isst_get_get_trl(cpu, pkg_dev.current_level, 0, trl);
  if (ret)
   return ret;

  msr_trl = 0;
  for (i = 0; i < 8; ++i) {
   unsigned long long _trl = trl[i];

   msr_trl |= (_trl << (i * 8));
  }
 }
 ret = isst_send_msr_command(cpu, 0x1AD, 1, &msr_trl);
 if (ret)
  return ret;

 return 0;
}

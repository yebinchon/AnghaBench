
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp_level_info {unsigned int t_proc_hot; } ;


 int CONFIG_TDP ;
 int CONFIG_TDP_GET_TJMAX_INFO ;
 unsigned int GENMASK (int,int ) ;
 int debug_printf (char*,int,int,unsigned int,unsigned int) ;
 int isst_send_mbox_command (int,int ,int ,int ,int,unsigned int*) ;

int isst_get_tjmax_info(int cpu, int config_index,
   struct isst_pkg_ctdp_level_info *ctdp_level)
{
 unsigned int resp;
 int ret;

 ret = isst_send_mbox_command(cpu, CONFIG_TDP, CONFIG_TDP_GET_TJMAX_INFO,
         0, config_index, &resp);
 if (ret)
  return ret;

 ctdp_level->t_proc_hot = resp & GENMASK(7, 0);

 debug_printf(
  "cpu:%d ctdp:%d CONFIG_TDP_GET_TJMAX_INFO resp:%x t_proc_hot:%d\n",
  cpu, config_index, resp, ctdp_level->t_proc_hot);

 return 0;
}

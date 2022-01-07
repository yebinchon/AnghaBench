
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp_level_info {unsigned int pkg_max_power; unsigned int pkg_min_power; } ;


 int CONFIG_TDP ;
 int CONFIG_TDP_GET_PWR_INFO ;
 unsigned int GENMASK (int,int) ;
 int debug_printf (char*,int,int,unsigned int,unsigned int,unsigned int) ;
 int isst_send_mbox_command (int,int ,int ,int ,int,unsigned int*) ;

int isst_get_pwr_info(int cpu, int config_index,
        struct isst_pkg_ctdp_level_info *ctdp_level)
{
 unsigned int resp;
 int ret;

 ret = isst_send_mbox_command(cpu, CONFIG_TDP, CONFIG_TDP_GET_PWR_INFO,
         0, config_index, &resp);
 if (ret)
  return ret;

 ctdp_level->pkg_max_power = resp & GENMASK(14, 0);
 ctdp_level->pkg_min_power = (resp & GENMASK(30, 16)) >> 16;

 debug_printf(
  "cpu:%d ctdp:%d CONFIG_TDP_GET_PWR_INFO resp:%x pkg_max_power:%d pkg_min_power:%d\n",
  cpu, config_index, resp, ctdp_level->pkg_max_power,
  ctdp_level->pkg_min_power);

 return 0;
}

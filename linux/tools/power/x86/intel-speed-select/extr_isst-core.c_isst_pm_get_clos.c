
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_clos_config {unsigned int epp; unsigned int clos_prop_prio; unsigned int clos_min; unsigned int clos_max; unsigned int clos_desired; int die_id; int pkg_id; } ;


 int CLOS_PM_CLOS ;
 int CONFIG_CLOS ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int isst_send_mbox_command (int,int ,int ,int,int ,unsigned int*) ;

int isst_pm_get_clos(int cpu, int clos, struct isst_clos_config *clos_config)
{
 unsigned int resp;
 int ret;

 ret = isst_send_mbox_command(cpu, CONFIG_CLOS, CLOS_PM_CLOS, clos, 0,
         &resp);
 if (ret)
  return ret;

 clos_config->pkg_id = get_physical_package_id(cpu);
 clos_config->die_id = get_physical_die_id(cpu);

 clos_config->epp = resp & 0x0f;
 clos_config->clos_prop_prio = (resp >> 4) & 0x0f;
 clos_config->clos_min = (resp >> 8) & 0xff;
 clos_config->clos_max = (resp >> 16) & 0xff;
 clos_config->clos_desired = (resp >> 24) & 0xff;

 return 0;
}

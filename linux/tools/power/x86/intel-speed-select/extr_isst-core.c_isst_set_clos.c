
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_clos_config {int epp; int clos_prop_prio; int clos_min; int clos_max; int clos_desired; } ;


 int BIT (int ) ;
 int CLOS_PM_CLOS ;
 int CONFIG_CLOS ;
 int MBOX_CMD_WRITE_BIT ;
 int debug_printf (char*,int,unsigned int,unsigned int) ;
 int isst_send_mbox_command (int,int ,int ,unsigned int,unsigned int,unsigned int*) ;

int isst_set_clos(int cpu, int clos, struct isst_clos_config *clos_config)
{
 unsigned int req, resp;
 unsigned int param;
 int ret;

 req = clos_config->epp & 0x0f;
 req |= (clos_config->clos_prop_prio & 0x0f) << 4;
 req |= (clos_config->clos_min & 0xff) << 8;
 req |= (clos_config->clos_max & 0xff) << 16;
 req |= (clos_config->clos_desired & 0xff) << 24;

 param = BIT(MBOX_CMD_WRITE_BIT) | clos;

 ret = isst_send_mbox_command(cpu, CONFIG_CLOS, CLOS_PM_CLOS, param, req,
         &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CLOS_PM_CLOS param:%x req:%x\n", cpu, param, req);

 return 0;
}

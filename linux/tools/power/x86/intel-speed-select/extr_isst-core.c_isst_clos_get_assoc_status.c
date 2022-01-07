
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOS_PQR_ASSOC ;
 int CONFIG_CLOS ;
 int debug_printf (char*,int,unsigned int,unsigned int) ;
 int find_phy_core_num (int) ;
 int isst_send_mbox_command (int,int ,int ,unsigned int,int ,unsigned int*) ;

int isst_clos_get_assoc_status(int cpu, int *clos_id)
{
 unsigned int resp;
 unsigned int param;
 int core_id, ret;

 core_id = find_phy_core_num(cpu);
 param = core_id;

 ret = isst_send_mbox_command(cpu, CONFIG_CLOS, CLOS_PQR_ASSOC, param, 0,
         &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CLOS_PQR_ASSOC param:%x resp:%x\n", cpu, param,
       resp);
 *clos_id = (resp >> 16) & 0x03;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int ) ;
 int CLOS_PQR_ASSOC ;
 int CONFIG_CLOS ;
 int MBOX_CMD_WRITE_BIT ;
 int debug_printf (char*,int,unsigned int,unsigned int) ;
 int find_phy_core_num (int) ;
 int isst_send_mbox_command (int,int ,int ,unsigned int,unsigned int,unsigned int*) ;

int isst_clos_associate(int cpu, int clos_id)
{
 unsigned int req, resp;
 unsigned int param;
 int core_id, ret;

 req = (clos_id & 0x03) << 16;
 core_id = find_phy_core_num(cpu);
 param = BIT(MBOX_CMD_WRITE_BIT) | core_id;

 ret = isst_send_mbox_command(cpu, CONFIG_CLOS, CLOS_PQR_ASSOC, param,
         req, &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CLOS_PQR_ASSOC param:%x req:%x\n", cpu, param,
       req);

 return 0;
}

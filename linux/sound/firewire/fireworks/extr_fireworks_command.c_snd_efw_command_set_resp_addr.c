
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct snd_efw {int resp_addr_changable; } ;
typedef int addr ;
typedef int __be32 ;


 int EFC_CAT_HWCTL ;
 int EFC_CMD_HWINFO_SET_RESP_ADDR ;
 int ENOSYS ;
 int cpu_to_be32 (int ) ;
 int efw_transaction (struct snd_efw*,int ,int ,int *,int,int *,int ) ;

int snd_efw_command_set_resp_addr(struct snd_efw *efw,
      u16 addr_high, u32 addr_low)
{
 __be32 addr[2];

 addr[0] = cpu_to_be32(addr_high);
 addr[1] = cpu_to_be32(addr_low);

 if (!efw->resp_addr_changable)
  return -ENOSYS;

 return efw_transaction(efw, EFC_CAT_HWCTL,
          EFC_CMD_HWINFO_SET_RESP_ADDR,
          addr, sizeof(addr), ((void*)0), 0);
}

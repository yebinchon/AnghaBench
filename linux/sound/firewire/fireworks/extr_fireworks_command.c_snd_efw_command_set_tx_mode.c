
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;
typedef int param ;
typedef enum snd_efw_transport_mode { ____Placeholder_snd_efw_transport_mode } snd_efw_transport_mode ;
typedef int __be32 ;


 int EFC_CAT_TRANSPORT ;
 int EFC_CMD_TRANSPORT_SET_TX_MODE ;
 int cpu_to_be32 (int) ;
 int efw_transaction (struct snd_efw*,int ,int ,int *,int,int *,int ) ;

int snd_efw_command_set_tx_mode(struct snd_efw *efw,
    enum snd_efw_transport_mode mode)
{
 __be32 param = cpu_to_be32(mode);
 return efw_transaction(efw, EFC_CAT_TRANSPORT,
          EFC_CMD_TRANSPORT_SET_TX_MODE,
          &param, sizeof(param), ((void*)0), 0);
}

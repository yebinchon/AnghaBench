
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_cdc_msg {int dummy; } ;
struct smc_host_cdc_msg {int dummy; } ;
struct smc_connection {TYPE_1__* lgr; } ;
struct smc_cdc_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_smcd; } ;


 int smcd_cdc_msg_to_host (struct smc_host_cdc_msg*,struct smcd_cdc_msg*,struct smc_connection*) ;
 int smcr_cdc_msg_to_host (struct smc_host_cdc_msg*,struct smc_cdc_msg*,struct smc_connection*) ;

__attribute__((used)) static inline void smc_cdc_msg_to_host(struct smc_host_cdc_msg *local,
           struct smc_cdc_msg *peer,
           struct smc_connection *conn)
{
 if (conn->lgr->is_smcd)
  smcd_cdc_msg_to_host(local, (struct smcd_cdc_msg *)peer, conn);
 else
  smcr_cdc_msg_to_host(local, peer, conn);
}

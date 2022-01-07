
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unit; } ;
struct cmp_connection {TYPE_1__ resources; } ;
typedef int __be32 ;


 int PCR_BCAST_CONN ;
 int PCR_P2P_CONN_MASK ;
 int TCODE_READ_QUADLET_REQUEST ;
 int cpu_to_be32 (int) ;
 int pcr_address (struct cmp_connection*) ;
 int snd_fw_transaction (int ,int ,int ,int*,int,int ) ;

int cmp_connection_check_used(struct cmp_connection *c, bool *used)
{
 __be32 pcr;
 int err;

 err = snd_fw_transaction(
   c->resources.unit, TCODE_READ_QUADLET_REQUEST,
   pcr_address(c), &pcr, 4, 0);
 if (err >= 0)
  *used = !!(pcr & cpu_to_be32(PCR_BCAST_CONN |
          PCR_P2P_CONN_MASK));

 return err;
}

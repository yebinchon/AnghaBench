
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_sock {int dummy; } ;
struct smc_init_info {scalar_t__ vlan_id; int ism_dev; } ;


 int SMC_CLC_DECL_ISMVLANERR ;
 scalar_t__ smc_ism_get_vlan (int ,scalar_t__) ;

__attribute__((used)) static int smc_connect_ism_vlan_setup(struct smc_sock *smc,
          struct smc_init_info *ini)
{
 if (ini->vlan_id && smc_ism_get_vlan(ini->ism_dev, ini->vlan_id))
  return SMC_CLC_DECL_ISMVLANERR;
 return 0;
}

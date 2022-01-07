
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {int * lnk; int vlan_id; int smcd; scalar_t__ is_smcd; } ;


 size_t SMC_SINGLE_LINK ;
 int kfree (struct smc_link_group*) ;
 int smc_ism_put_vlan (int ,int ) ;
 int smc_lgr_free_bufs (struct smc_link_group*) ;
 int smc_link_clear (int *) ;

__attribute__((used)) static void smc_lgr_free(struct smc_link_group *lgr)
{
 smc_lgr_free_bufs(lgr);
 if (lgr->is_smcd)
  smc_ism_put_vlan(lgr->smcd, lgr->vlan_id);
 else
  smc_link_clear(&lgr->lnk[SMC_SINGLE_LINK]);
 kfree(lgr);
}

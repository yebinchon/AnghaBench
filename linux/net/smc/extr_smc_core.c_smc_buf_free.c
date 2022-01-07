
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {scalar_t__ is_smcd; } ;
struct smc_buf_desc {int dummy; } ;


 int smcd_buf_free (struct smc_link_group*,int,struct smc_buf_desc*) ;
 int smcr_buf_free (struct smc_link_group*,int,struct smc_buf_desc*) ;

__attribute__((used)) static void smc_buf_free(struct smc_link_group *lgr, bool is_rmb,
    struct smc_buf_desc *buf_desc)
{
 if (lgr->is_smcd)
  smcd_buf_free(lgr, is_rmb, buf_desc);
 else
  smcr_buf_free(lgr, is_rmb, buf_desc);
}

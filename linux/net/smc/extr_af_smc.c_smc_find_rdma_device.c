
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_sock {TYPE_1__* clcsock; } ;
struct smc_init_info {int ib_dev; } ;
struct TYPE_2__ {int sk; } ;


 int SMC_CLC_DECL_NOSMCRDEV ;
 int smc_pnet_find_roce_resource (int ,struct smc_init_info*) ;

__attribute__((used)) static int smc_find_rdma_device(struct smc_sock *smc, struct smc_init_info *ini)
{




 smc_pnet_find_roce_resource(smc->clcsock->sk, ini);
 if (!ini->ib_dev)
  return SMC_CLC_DECL_NOSMCRDEV;
 return 0;
}

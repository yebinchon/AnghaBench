
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_sock {int dummy; } ;
struct smc_init_info {int dummy; } ;


 int SMC_CLC_DECL_MEM ;
 scalar_t__ smc_buf_create (struct smc_sock*,int) ;
 int smc_conn_create (struct smc_sock*,struct smc_init_info*) ;

__attribute__((used)) static int smc_listen_rdma_init(struct smc_sock *new_smc,
    struct smc_init_info *ini)
{
 int rc;


 rc = smc_conn_create(new_smc, ini);
 if (rc)
  return rc;


 if (smc_buf_create(new_smc, 0))
  return SMC_CLC_DECL_MEM;

 return 0;
}

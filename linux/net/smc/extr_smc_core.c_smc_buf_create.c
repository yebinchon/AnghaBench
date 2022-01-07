
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sndbuf_desc; int lgr; } ;
struct smc_sock {TYPE_1__ conn; } ;


 int __smc_buf_create (struct smc_sock*,int,int) ;
 int smc_buf_free (int ,int,int ) ;

int smc_buf_create(struct smc_sock *smc, bool is_smcd)
{
 int rc;


 rc = __smc_buf_create(smc, is_smcd, 0);
 if (rc)
  return rc;

 rc = __smc_buf_create(smc, is_smcd, 1);
 if (rc)
  smc_buf_free(smc->conn.lgr, 0, smc->conn.sndbuf_desc);
 return rc;
}

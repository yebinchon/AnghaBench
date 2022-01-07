
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_connection {scalar_t__ urg_state; } ;
struct smc_sock {struct smc_connection conn; } ;


 scalar_t__ SMC_URG_VALID ;
 scalar_t__ smc_rx_data_available (struct smc_connection*) ;
 int smc_rx_update_cons (struct smc_sock*,int ) ;

__attribute__((used)) static bool smc_rx_recvmsg_data_available(struct smc_sock *smc)
{
 struct smc_connection *conn = &smc->conn;

 if (smc_rx_data_available(conn))
  return 1;
 else if (conn->urg_state == SMC_URG_VALID)

  smc_rx_update_cons(smc, 0);
 return 0;
}

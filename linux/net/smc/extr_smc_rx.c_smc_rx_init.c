
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int urg_state; int splice_pending; } ;
struct TYPE_3__ {int sk_data_ready; } ;
struct smc_sock {TYPE_2__ conn; TYPE_1__ sk; } ;


 int SMC_URG_READ ;
 int atomic_set (int *,int ) ;
 int smc_rx_wake_up ;

void smc_rx_init(struct smc_sock *smc)
{
 smc->sk.sk_data_ready = smc_rx_wake_up;
 atomic_set(&smc->conn.splice_pending, 0);
 smc->conn.urg_state = SMC_URG_READ;
}

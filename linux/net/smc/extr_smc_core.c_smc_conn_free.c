
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {int conns_num; scalar_t__ is_smcd; } ;
struct smc_connection {struct smc_link_group* lgr; int rx_tsklet; } ;


 int smc_buf_unuse (struct smc_connection*,struct smc_link_group*) ;
 int smc_cdc_tx_dismiss_slots (struct smc_connection*) ;
 int smc_ism_unset_conn (struct smc_connection*) ;
 int smc_lgr_schedule_free_work (struct smc_link_group*) ;
 int smc_lgr_unregister_conn (struct smc_connection*) ;
 int tasklet_kill (int *) ;

void smc_conn_free(struct smc_connection *conn)
{
 struct smc_link_group *lgr = conn->lgr;

 if (!lgr)
  return;
 if (lgr->is_smcd) {
  smc_ism_unset_conn(conn);
  tasklet_kill(&conn->rx_tsklet);
 } else {
  smc_cdc_tx_dismiss_slots(conn);
 }
 smc_lgr_unregister_conn(conn);
 smc_buf_unuse(conn, lgr);
 conn->lgr = ((void*)0);

 if (!lgr->conns_num)
  smc_lgr_schedule_free_work(lgr);
}

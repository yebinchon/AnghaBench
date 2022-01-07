
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link_group {int conns_lock; } ;
struct smc_connection {scalar_t__ alert_token_local; struct smc_link_group* lgr; } ;


 int __smc_lgr_unregister_conn (struct smc_connection*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void smc_lgr_unregister_conn(struct smc_connection *conn)
{
 struct smc_link_group *lgr = conn->lgr;

 if (!lgr)
  return;
 write_lock_bh(&lgr->conns_lock);
 if (conn->alert_token_local) {
  __smc_lgr_unregister_conn(conn);
 }
 write_unlock_bh(&lgr->conns_lock);
}

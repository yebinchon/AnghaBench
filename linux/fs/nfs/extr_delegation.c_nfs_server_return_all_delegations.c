
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;


 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int nfs4_wait_clnt_recover (struct nfs_client*) ;
 int nfs_server_mark_return_all_delegations (struct nfs_server*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nfs_server_return_all_delegations(struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;
 bool need_wait;

 if (clp == ((void*)0))
  return;

 rcu_read_lock();
 need_wait = nfs_server_mark_return_all_delegations(server);
 rcu_read_unlock();

 if (need_wait) {
  nfs4_schedule_state_manager(clp);
  nfs4_wait_clnt_recover(clp);
 }
}

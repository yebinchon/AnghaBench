
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tipc_topsrv {int conn_idr; int idr_lock; struct socket* listener; scalar_t__ idr_in_use; } ;
struct tipc_conn {int dummy; } ;
struct socket {TYPE_3__* sk; TYPE_1__* ops; } ;
struct net {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sk_prot_creator; } ;
struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int owner; } ;


 int __module_get (int ) ;
 int idr_destroy (int *) ;
 struct tipc_conn* idr_find (int *,int) ;
 int kfree (struct tipc_topsrv*) ;
 int sock_release (struct socket*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_conn_close (struct tipc_conn*) ;
 struct tipc_topsrv* tipc_topsrv (struct net*) ;
 int tipc_topsrv_work_stop (struct tipc_topsrv*) ;

__attribute__((used)) static void tipc_topsrv_stop(struct net *net)
{
 struct tipc_topsrv *srv = tipc_topsrv(net);
 struct socket *lsock = srv->listener;
 struct tipc_conn *con;
 int id;

 spin_lock_bh(&srv->idr_lock);
 for (id = 0; srv->idr_in_use; id++) {
  con = idr_find(&srv->conn_idr, id);
  if (con) {
   spin_unlock_bh(&srv->idr_lock);
   tipc_conn_close(con);
   spin_lock_bh(&srv->idr_lock);
  }
 }
 __module_get(lsock->ops->owner);
 __module_get(lsock->sk->sk_prot_creator->owner);
 srv->listener = ((void*)0);
 spin_unlock_bh(&srv->idr_lock);
 sock_release(lsock);
 tipc_topsrv_work_stop(srv);
 idr_destroy(&srv->conn_idr);
 kfree(srv);
}

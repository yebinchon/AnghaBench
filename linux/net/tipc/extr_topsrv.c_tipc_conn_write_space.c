
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_conn {int swork; TYPE_1__* server; } ;
struct sock {int sk_callback_lock; struct tipc_conn* sk_user_data; } ;
struct TYPE_2__ {int send_wq; } ;


 int conn_get (struct tipc_conn*) ;
 int conn_put (struct tipc_conn*) ;
 scalar_t__ connected (struct tipc_conn*) ;
 int queue_work (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void tipc_conn_write_space(struct sock *sk)
{
 struct tipc_conn *con;

 read_lock_bh(&sk->sk_callback_lock);
 con = sk->sk_user_data;
 if (connected(con)) {
  conn_get(con);
  if (!queue_work(con->server->send_wq, &con->swork))
   conn_put(con);
 }
 read_unlock_bh(&sk->sk_callback_lock);
}

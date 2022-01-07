
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_conn {int flags; } ;
struct net {int dummy; } ;


 int CF_CONNECTED ;
 int conn_put (struct tipc_conn*) ;
 int test_and_clear_bit (int ,int *) ;
 int tipc_conn_delete_sub (struct tipc_conn*,int *) ;
 struct tipc_conn* tipc_conn_lookup (int ,int) ;
 int tipc_topsrv (struct net*) ;

void tipc_topsrv_kern_unsubscr(struct net *net, int conid)
{
 struct tipc_conn *con;

 con = tipc_conn_lookup(tipc_topsrv(net), conid);
 if (!con)
  return;

 test_and_clear_bit(CF_CONNECTED, &con->flags);
 tipc_conn_delete_sub(con, ((void*)0));
 conn_put(con);
 conn_put(con);
}

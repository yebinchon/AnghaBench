
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {int idr_lock; int conn_idr; } ;
struct tipc_conn {int kref; } ;


 int connected (struct tipc_conn*) ;
 struct tipc_conn* idr_find (int *,int) ;
 int kref_get_unless_zero (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct tipc_conn *tipc_conn_lookup(struct tipc_topsrv *s, int conid)
{
 struct tipc_conn *con;

 spin_lock_bh(&s->idr_lock);
 con = idr_find(&s->conn_idr, conid);
 if (!connected(con) || !kref_get_unless_zero(&con->kref))
  con = ((void*)0);
 spin_unlock_bh(&s->idr_lock);
 return con;
}

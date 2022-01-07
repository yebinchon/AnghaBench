
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int ref; } ;


 int kref_put (int *,int ) ;
 int l2cap_conn_free ;

void l2cap_conn_put(struct l2cap_conn *conn)
{
 kref_put(&conn->ref, l2cap_conn_free);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int ref; } ;


 int kref_get (int *) ;

struct l2cap_conn *l2cap_conn_get(struct l2cap_conn *conn)
{
 kref_get(&conn->ref);
 return conn;
}

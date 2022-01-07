
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_conn {int kref; } ;


 int kref_put (int *,int ) ;
 int tipc_conn_kref_release ;

__attribute__((used)) static void conn_put(struct tipc_conn *con)
{
 kref_put(&con->kref, tipc_conn_kref_release);
}

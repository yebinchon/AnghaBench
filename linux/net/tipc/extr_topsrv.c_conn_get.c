
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_conn {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void conn_get(struct tipc_conn *con)
{
 kref_get(&con->kref);
}

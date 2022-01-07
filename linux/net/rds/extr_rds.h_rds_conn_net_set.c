
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_net; } ;
struct net {int dummy; } ;


 int write_pnet (int *,struct net*) ;

__attribute__((used)) static inline
void rds_conn_net_set(struct rds_connection *conn, struct net *net)
{
 write_pnet(&conn->c_net, net);
}

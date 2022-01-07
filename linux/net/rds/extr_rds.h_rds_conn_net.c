
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_net; } ;
struct net {int dummy; } ;


 struct net* read_pnet (int *) ;

__attribute__((used)) static inline
struct net *rds_conn_net(struct rds_connection *conn)
{
 return read_pnet(&conn->c_net);
}

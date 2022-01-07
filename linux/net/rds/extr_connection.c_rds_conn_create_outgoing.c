
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rds_transport {int dummy; } ;
struct rds_connection {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int gfp_t ;


 struct rds_connection* __rds_conn_create (struct net*,struct in6_addr const*,struct in6_addr const*,struct rds_transport*,int ,int ,int,int) ;

struct rds_connection *rds_conn_create_outgoing(struct net *net,
      const struct in6_addr *laddr,
      const struct in6_addr *faddr,
      struct rds_transport *trans,
      u8 tos, gfp_t gfp, int dev_if)
{
 return __rds_conn_create(net, laddr, faddr, trans, gfp, tos, 1, dev_if);
}

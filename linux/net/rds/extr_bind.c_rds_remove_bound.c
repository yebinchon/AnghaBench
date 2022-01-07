
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int rs_bound_addr; int rs_bound_node; int rs_bound_port; } ;


 int bind_hash_table ;
 int ht_parms ;
 int in6addr_any ;
 scalar_t__ ipv6_addr_any (int *) ;
 int ntohs (int ) ;
 int rds_sock_put (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_sock*,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

void rds_remove_bound(struct rds_sock *rs)
{

 if (ipv6_addr_any(&rs->rs_bound_addr))
  return;

 rdsdebug("rs %p unbinding from %pI6c:%d\n",
   rs, &rs->rs_bound_addr,
   ntohs(rs->rs_bound_port));

 rhashtable_remove_fast(&bind_hash_table, &rs->rs_bound_node, ht_parms);
 rds_sock_put(rs);
 rs->rs_bound_addr = in6addr_any;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct rds_transport {scalar_t__ (* laddr_check ) (struct net*,struct in6_addr const*,int ) ;int t_owner; } ;
struct net {int dummy; } ;
struct in6_addr {int * s6_addr32; } ;
typedef int __u32 ;


 scalar_t__ IN_LOOPBACKNET ;
 unsigned int RDS_TRANS_COUNT ;
 int down_read (int *) ;
 scalar_t__ ipv6_addr_loopback (struct in6_addr const*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr const*) ;
 struct rds_transport rds_loop_transport ;
 int rds_trans_sem ;
 scalar_t__ stub1 (struct net*,struct in6_addr const*,int ) ;
 struct rds_transport** transports ;
 scalar_t__ try_module_get (int ) ;
 int up_read (int *) ;

struct rds_transport *rds_trans_get_preferred(struct net *net,
           const struct in6_addr *addr,
           __u32 scope_id)
{
 struct rds_transport *ret = ((void*)0);
 struct rds_transport *trans;
 unsigned int i;

 if (ipv6_addr_v4mapped(addr)) {
  if (*(u_int8_t *)&addr->s6_addr32[3] == IN_LOOPBACKNET)
   return &rds_loop_transport;
 } else if (ipv6_addr_loopback(addr)) {
  return &rds_loop_transport;
 }

 down_read(&rds_trans_sem);
 for (i = 0; i < RDS_TRANS_COUNT; i++) {
  trans = transports[i];

  if (trans && (trans->laddr_check(net, addr, scope_id) == 0) &&
      (!trans->t_owner || try_module_get(trans->t_owner))) {
   ret = trans;
   break;
  }
 }
 up_read(&rds_trans_sem);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rds_sock {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __u32 ;
typedef int __be16 ;
struct TYPE_3__ {int sk_refcnt; } ;


 int RDS_BOUND_KEY_LEN ;
 int SOCK_DEAD ;
 int __rds_create_bind_key (int *,struct in6_addr const*,int ,int ) ;
 int bind_hash_table ;
 int ht_parms ;
 int ntohs (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_1__* rds_rs_to_sk (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_sock*,struct in6_addr const*,int ) ;
 int refcount_inc_not_zero (int *) ;
 struct rds_sock* rhashtable_lookup (int *,int *,int ) ;
 scalar_t__ sock_flag (TYPE_1__*,int ) ;

struct rds_sock *rds_find_bound(const struct in6_addr *addr, __be16 port,
    __u32 scope_id)
{
 u8 key[RDS_BOUND_KEY_LEN];
 struct rds_sock *rs;

 __rds_create_bind_key(key, addr, port, scope_id);
 rcu_read_lock();
 rs = rhashtable_lookup(&bind_hash_table, key, ht_parms);
 if (rs && (sock_flag(rds_rs_to_sk(rs), SOCK_DEAD) ||
     !refcount_inc_not_zero(&rds_rs_to_sk(rs)->sk_refcnt)))
  rs = ((void*)0);

 rcu_read_unlock();

 rdsdebug("returning rs %p for %pI6c:%u\n", rs, addr,
   ntohs(port));

 return rs;
}

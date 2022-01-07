
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_compare_arg {struct netlink_compare_arg* key; } ;
struct netlink_sock {scalar_t__ portid; int sk; } ;
struct netlink_compare_arg {scalar_t__ portid; int pnet; } ;


 int net_eq (int ,int ) ;
 int read_pnet (int *) ;
 int sock_net (int *) ;

__attribute__((used)) static inline int netlink_compare(struct rhashtable_compare_arg *arg,
      const void *ptr)
{
 const struct netlink_compare_arg *x = arg->key;
 const struct netlink_sock *nlk = ptr;

 return nlk->portid != x->portid ||
        !net_eq(sock_net(&nlk->sk), read_pnet(&x->pnet));
}

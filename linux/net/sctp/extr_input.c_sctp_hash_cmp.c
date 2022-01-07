
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_transport {TYPE_3__* asoc; int ipaddr; } ;
struct sctp_hash_cmp_arg {scalar_t__ lport; int net; int paddr; } ;
struct rhashtable_compare_arg {struct sctp_hash_cmp_arg* key; } ;
struct TYPE_4__ {int port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; int sk; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 scalar_t__ htons (int ) ;
 int net_eq (int ,int ) ;
 int sctp_cmp_addr_exact (int *,int ) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 int sock_net (int ) ;

__attribute__((used)) static inline int sctp_hash_cmp(struct rhashtable_compare_arg *arg,
    const void *ptr)
{
 struct sctp_transport *t = (struct sctp_transport *)ptr;
 const struct sctp_hash_cmp_arg *x = arg->key;
 int err = 1;

 if (!sctp_cmp_addr_exact(&t->ipaddr, x->paddr))
  return err;
 if (!sctp_transport_hold(t))
  return err;

 if (!net_eq(sock_net(t->asoc->base.sk), x->net))
  goto out;
 if (x->lport != htons(t->asoc->base.bind_addr.port))
  goto out;

 err = 0;
out:
 sctp_transport_put(t);
 return err;
}

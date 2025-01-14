
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ all; } ;
struct TYPE_6__ {TYPE_1__ u; int u3; } ;
struct TYPE_8__ {scalar_t__ protonum; } ;
struct nf_conntrack_tuple {TYPE_2__ src; TYPE_4__ dst; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
struct TYPE_7__ {struct nf_conntrack_tuple tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 scalar_t__ nf_inet_addr_cmp (int *,int *) ;

__attribute__((used)) static inline int
same_src(const struct nf_conn *ct,
  const struct nf_conntrack_tuple *tuple)
{
 const struct nf_conntrack_tuple *t;

 t = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
 return (t->dst.protonum == tuple->dst.protonum &&
  nf_inet_addr_cmp(&t->src.u3, &tuple->src.u3) &&
  t->src.u.all == tuple->src.u.all);
}

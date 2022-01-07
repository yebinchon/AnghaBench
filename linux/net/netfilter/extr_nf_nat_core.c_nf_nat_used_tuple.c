
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;


 int nf_conntrack_tuple_taken (struct nf_conntrack_tuple*,struct nf_conn const*) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ;

__attribute__((used)) static int
nf_nat_used_tuple(const struct nf_conntrack_tuple *tuple,
    const struct nf_conn *ignored_conntrack)
{






 struct nf_conntrack_tuple reply;

 nf_ct_invert_tuple(&reply, tuple);
 return nf_conntrack_tuple_taken(&reply, ignored_conntrack);
}

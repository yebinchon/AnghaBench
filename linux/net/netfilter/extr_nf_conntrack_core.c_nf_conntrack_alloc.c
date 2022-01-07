
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 struct nf_conn* __nf_conntrack_alloc (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*,struct nf_conntrack_tuple const*,int ,int ) ;

struct nf_conn *nf_conntrack_alloc(struct net *net,
       const struct nf_conntrack_zone *zone,
       const struct nf_conntrack_tuple *orig,
       const struct nf_conntrack_tuple *repl,
       gfp_t gfp)
{
 return __nf_conntrack_alloc(net, zone, orig, repl, gfp, 0);
}

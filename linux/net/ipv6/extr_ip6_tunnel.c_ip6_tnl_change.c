
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fwmark; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;
struct ip6_tnl {int dst_cache; TYPE_1__ parms; } ;
struct __ip6_tnl_parm {int fwmark; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;


 int dst_cache_reset (int *) ;
 int ip6_tnl_link_config (struct ip6_tnl*) ;

__attribute__((used)) static int
ip6_tnl_change(struct ip6_tnl *t, const struct __ip6_tnl_parm *p)
{
 t->parms.laddr = p->laddr;
 t->parms.raddr = p->raddr;
 t->parms.flags = p->flags;
 t->parms.hop_limit = p->hop_limit;
 t->parms.encap_limit = p->encap_limit;
 t->parms.flowinfo = p->flowinfo;
 t->parms.link = p->link;
 t->parms.proto = p->proto;
 t->parms.fwmark = p->fwmark;
 dst_cache_reset(&t->dst_cache);
 ip6_tnl_link_config(t);
 return 0;
}

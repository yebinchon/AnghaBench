
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_policy_afinfo {struct dst_entry* (* dst_lookup ) (struct net*,int,int,int const*,int const*,int ) ;} ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAFNOSUPPORT ;
 struct dst_entry* ERR_PTR (int ) ;
 int rcu_read_unlock () ;
 struct dst_entry* stub1 (struct net*,int,int,int const*,int const*,int ) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int) ;

struct dst_entry *__xfrm_dst_lookup(struct net *net, int tos, int oif,
        const xfrm_address_t *saddr,
        const xfrm_address_t *daddr,
        int family, u32 mark)
{
 const struct xfrm_policy_afinfo *afinfo;
 struct dst_entry *dst;

 afinfo = xfrm_policy_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ERR_PTR(-EAFNOSUPPORT);

 dst = afinfo->dst_lookup(net, tos, oif, saddr, daddr, mark);

 rcu_read_unlock();

 return dst;
}

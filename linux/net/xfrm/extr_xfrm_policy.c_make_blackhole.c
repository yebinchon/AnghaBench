
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xfrm_policy_afinfo {struct dst_entry* (* blackhole_route ) (struct net*,struct dst_entry*) ;} ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EINVAL ;
 struct dst_entry* ERR_PTR (int ) ;
 int dst_release (struct dst_entry*) ;
 int rcu_read_unlock () ;
 struct dst_entry* stub1 (struct net*,struct dst_entry*) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (int ) ;

__attribute__((used)) static struct dst_entry *make_blackhole(struct net *net, u16 family,
     struct dst_entry *dst_orig)
{
 const struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);
 struct dst_entry *ret;

 if (!afinfo) {
  dst_release(dst_orig);
  return ERR_PTR(-EINVAL);
 } else {
  ret = afinfo->blackhole_route(net, dst_orig);
 }
 rcu_read_unlock();

 return ret;
}

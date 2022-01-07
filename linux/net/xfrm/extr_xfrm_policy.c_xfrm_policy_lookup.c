
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xfrm_policy {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;


 int XFRM_POLICY_TYPE_MAIN ;
 int XFRM_POLICY_TYPE_SUB ;
 struct xfrm_policy* xfrm_policy_lookup_bytype (struct net*,int ,struct flowi const*,int ,int ,int ) ;

__attribute__((used)) static struct xfrm_policy *xfrm_policy_lookup(struct net *net,
           const struct flowi *fl,
           u16 family, u8 dir, u32 if_id)
{
 return xfrm_policy_lookup_bytype(net, XFRM_POLICY_TYPE_MAIN, fl, family,
      dir, if_id);
}

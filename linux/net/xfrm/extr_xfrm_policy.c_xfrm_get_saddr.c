
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_policy_afinfo {int (* get_saddr ) (struct net*,int,int *,int *,int ) ;} ;
struct net {int dummy; } ;


 int EINVAL ;
 int rcu_read_unlock () ;
 int stub1 (struct net*,int,int *,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_policy_afinfo* xfrm_policy_get_afinfo (unsigned short) ;

__attribute__((used)) static int
xfrm_get_saddr(struct net *net, int oif, xfrm_address_t *local,
        xfrm_address_t *remote, unsigned short family, u32 mark)
{
 int err;
 const struct xfrm_policy_afinfo *afinfo = xfrm_policy_get_afinfo(family);

 if (unlikely(afinfo == ((void*)0)))
  return -EINVAL;
 err = afinfo->get_saddr(net, oif, local, remote, mark);
 rcu_read_unlock();
 return err;
}

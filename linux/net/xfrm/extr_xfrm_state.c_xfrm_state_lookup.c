
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 struct xfrm_state* __xfrm_state_lookup (struct net*,int ,int const*,int ,int ,unsigned short) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct xfrm_state *
xfrm_state_lookup(struct net *net, u32 mark, const xfrm_address_t *daddr, __be32 spi,
    u8 proto, unsigned short family)
{
 struct xfrm_state *x;

 rcu_read_lock();
 x = __xfrm_state_lookup(net, mark, daddr, spi, proto, family);
 rcu_read_unlock();
 return x;
}

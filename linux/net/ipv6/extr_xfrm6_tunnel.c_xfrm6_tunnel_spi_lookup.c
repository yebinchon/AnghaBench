
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm6_tunnel_spi {int spi; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 struct xfrm6_tunnel_spi* __xfrm6_tunnel_spi_lookup (struct net*,int const*) ;
 int htonl (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__be32 xfrm6_tunnel_spi_lookup(struct net *net, const xfrm_address_t *saddr)
{
 struct xfrm6_tunnel_spi *x6spi;
 u32 spi;

 rcu_read_lock_bh();
 x6spi = __xfrm6_tunnel_spi_lookup(net, saddr);
 spi = x6spi ? x6spi->spi : 0;
 rcu_read_unlock_bh();
 return htonl(spi);
}

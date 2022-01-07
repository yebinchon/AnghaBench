
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm6_tunnel_spi {int spi; int refcnt; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 int __xfrm6_tunnel_alloc_spi (struct net*,int *) ;
 struct xfrm6_tunnel_spi* __xfrm6_tunnel_spi_lookup (struct net*,int *) ;
 int htonl (int ) ;
 int refcount_inc (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm6_tunnel_spi_lock ;

__be32 xfrm6_tunnel_alloc_spi(struct net *net, xfrm_address_t *saddr)
{
 struct xfrm6_tunnel_spi *x6spi;
 u32 spi;

 spin_lock_bh(&xfrm6_tunnel_spi_lock);
 x6spi = __xfrm6_tunnel_spi_lookup(net, saddr);
 if (x6spi) {
  refcount_inc(&x6spi->refcnt);
  spi = x6spi->spi;
 } else
  spi = __xfrm6_tunnel_alloc_spi(net, saddr);
 spin_unlock_bh(&xfrm6_tunnel_spi_lock);

 return htonl(spi);
}

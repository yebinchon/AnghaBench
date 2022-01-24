#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm6_tunnel_spi {int /*<<< orphan*/  spi; int /*<<< orphan*/  refcnt; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 struct xfrm6_tunnel_spi* FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm6_tunnel_spi_lock ; 

__be32 FUNC6(struct net *net, xfrm_address_t *saddr)
{
	struct xfrm6_tunnel_spi *x6spi;
	u32 spi;

	FUNC4(&xfrm6_tunnel_spi_lock);
	x6spi = FUNC1(net, saddr);
	if (x6spi) {
		FUNC3(&x6spi->refcnt);
		spi = x6spi->spi;
	} else
		spi = FUNC0(net, saddr);
	FUNC5(&xfrm6_tunnel_spi_lock);

	return FUNC2(spi);
}
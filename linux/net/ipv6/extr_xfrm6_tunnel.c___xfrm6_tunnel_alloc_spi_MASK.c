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
typedef  scalar_t__ u32 ;
struct xfrm6_tunnel_spi {int /*<<< orphan*/  list_byaddr; int /*<<< orphan*/  list_byspi; int /*<<< orphan*/  refcnt; scalar_t__ spi; int /*<<< orphan*/  addr; } ;
struct xfrm6_tunnel_net {scalar_t__ spi; int /*<<< orphan*/ * spi_byaddr; int /*<<< orphan*/ * spi_byspi; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ XFRM6_TUNNEL_SPI_MAX ; 
 scalar_t__ XFRM6_TUNNEL_SPI_MIN ; 
 int FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xfrm6_tunnel_spi* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct xfrm6_tunnel_net* FUNC5 (struct net*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm6_tunnel_spi_kmem ; 

__attribute__((used)) static u32 FUNC7(struct net *net, xfrm_address_t *saddr)
{
	struct xfrm6_tunnel_net *xfrm6_tn = FUNC5(net);
	u32 spi;
	struct xfrm6_tunnel_spi *x6spi;
	int index;

	if (xfrm6_tn->spi < XFRM6_TUNNEL_SPI_MIN ||
	    xfrm6_tn->spi >= XFRM6_TUNNEL_SPI_MAX)
		xfrm6_tn->spi = XFRM6_TUNNEL_SPI_MIN;
	else
		xfrm6_tn->spi++;

	for (spi = xfrm6_tn->spi; spi <= XFRM6_TUNNEL_SPI_MAX; spi++) {
		index = FUNC0(net, spi);
		if (index >= 0)
			goto alloc_spi;

		if (spi == XFRM6_TUNNEL_SPI_MAX)
			break;
	}
	for (spi = XFRM6_TUNNEL_SPI_MIN; spi < xfrm6_tn->spi; spi++) {
		index = FUNC0(net, spi);
		if (index >= 0)
			goto alloc_spi;
	}
	spi = 0;
	goto out;
alloc_spi:
	xfrm6_tn->spi = spi;
	x6spi = FUNC2(xfrm6_tunnel_spi_kmem, GFP_ATOMIC);
	if (!x6spi)
		goto out;

	FUNC3(&x6spi->addr, saddr, sizeof(x6spi->addr));
	x6spi->spi = spi;
	FUNC4(&x6spi->refcnt, 1);

	FUNC1(&x6spi->list_byspi, &xfrm6_tn->spi_byspi[index]);

	index = FUNC6(saddr);
	FUNC1(&x6spi->list_byaddr, &xfrm6_tn->spi_byaddr[index]);
out:
	return spi;
}
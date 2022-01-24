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
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int /*<<< orphan*/  plen; int /*<<< orphan*/  pfx; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct in6_addr*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*,struct in6_addr*,void const*) ; 

__attribute__((used)) static bool FUNC3(const struct net_device *dev,
				   const struct lowpan_iphc_ctx *ctx,
				   const struct in6_addr *ipaddr,
				   const void *lladdr)
{
	struct in6_addr tmp = {};

	FUNC2(dev, &tmp, lladdr);

	if (ctx)
		FUNC1(&tmp, &ctx->pfx, ctx->plen);

	return FUNC0(&tmp, ipaddr);
}
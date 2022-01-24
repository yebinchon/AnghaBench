#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ family; int /*<<< orphan*/  saddr; } ;
struct xfrm_state {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ XFRM_MODE_TUNNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC2(const struct xfrm_state *x, __be32 dst, __be32 src)
{
	xfrm_address_t *daddr = (xfrm_address_t *)&dst;
	xfrm_address_t *saddr = (xfrm_address_t *)&src;

	/* if there is no transform then this tunnel is not functional.
	 * Or if the xfrm is not mode tunnel.
	 */
	if (!x || x->props.mode != XFRM_MODE_TUNNEL ||
	    x->props.family != AF_INET)
		return false;

	if (!dst)
		return FUNC0(saddr, &x->props.saddr, AF_INET);

	if (!FUNC1(x, daddr, saddr, AF_INET))
		return false;

	return true;
}
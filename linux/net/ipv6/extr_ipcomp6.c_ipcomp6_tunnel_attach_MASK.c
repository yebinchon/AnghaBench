#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_4__ {int m; int v; } ;
struct xfrm_state {int /*<<< orphan*/  tunnel_users; struct xfrm_state* tunnel; TYPE_3__ id; TYPE_2__ props; TYPE_1__ mark; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC1 (struct xfrm_state*) ; 
 scalar_t__ FUNC2 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC5 (struct net*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC7(struct xfrm_state *x)
{
	struct net *net = FUNC6(x);
	int err = 0;
	struct xfrm_state *t = NULL;
	__be32 spi;
	u32 mark = x->mark.m & x->mark.v;

	spi = FUNC2(net, (xfrm_address_t *)&x->props.saddr);
	if (spi)
		t = FUNC5(net, mark, (xfrm_address_t *)&x->id.daddr,
					      spi, IPPROTO_IPV6, AF_INET6);
	if (!t) {
		t = FUNC1(x);
		if (!t) {
			err = -EINVAL;
			goto out;
		}
		FUNC4(t);
		FUNC3(t);
	}
	x->tunnel = t;
	FUNC0(&t->tunnel_users);

out:
	return err;
}
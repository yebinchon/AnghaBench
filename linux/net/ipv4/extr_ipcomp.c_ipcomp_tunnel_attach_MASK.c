#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  a4; } ;
struct TYPE_9__ {TYPE_3__ saddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  a4; } ;
struct TYPE_7__ {TYPE_1__ daddr; } ;
struct TYPE_10__ {int v; int m; } ;
struct xfrm_state {int /*<<< orphan*/  tunnel_users; struct xfrm_state* tunnel; TYPE_4__ props; TYPE_2__ id; TYPE_5__ mark; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC4 (struct net*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x)
{
	struct net *net = FUNC5(x);
	int err = 0;
	struct xfrm_state *t;
	u32 mark = x->mark.v & x->mark.m;

	t = FUNC4(net, mark, (xfrm_address_t *)&x->id.daddr.a4,
			      x->props.saddr.a4, IPPROTO_IPIP, AF_INET);
	if (!t) {
		t = FUNC1(x);
		if (!t) {
			err = -EINVAL;
			goto out;
		}
		FUNC3(t);
		FUNC2(t);
	}
	x->tunnel = t;
	FUNC0(&t->tunnel_users);
out:
	return err;
}
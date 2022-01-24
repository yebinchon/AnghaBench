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
struct TYPE_2__ {int encap; int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XFRM_MODE_BEET 131 
#define  XFRM_MODE_ROUTEOPTIMIZATION 130 
#define  XFRM_MODE_TRANSPORT 129 
#define  XFRM_MODE_TUNNEL 128 
 int FUNC1 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC2 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC3 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC4 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC5 (struct xfrm_state*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb)
{
	switch (x->outer_mode.encap) {
	case XFRM_MODE_BEET:
	case XFRM_MODE_TUNNEL:
		if (x->outer_mode.family == AF_INET)
			return FUNC1(x, skb);
		if (x->outer_mode.family == AF_INET6)
			return FUNC3(x, skb);
		break;
	case XFRM_MODE_TRANSPORT:
		if (x->outer_mode.family == AF_INET)
			return FUNC2(x, skb);
		if (x->outer_mode.family == AF_INET6)
			return FUNC5(x, skb);
		break;
	case XFRM_MODE_ROUTEOPTIMIZATION:
		if (x->outer_mode.family == AF_INET6)
			return FUNC4(x, skb);
		FUNC0(1);
		break;
	default:
		FUNC0(1);
		break;
	}

	return -EOPNOTSUPP;
}
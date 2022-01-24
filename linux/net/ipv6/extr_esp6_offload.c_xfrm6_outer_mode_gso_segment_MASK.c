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
struct TYPE_2__ {int encap; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XFRM_MODE_TRANSPORT 129 
#define  XFRM_MODE_TUNNEL 128 
 struct sk_buff* FUNC1 (struct xfrm_state*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct xfrm_state*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct xfrm_state *x,
						    struct sk_buff *skb,
						    netdev_features_t features)
{
	switch (x->outer_mode.encap) {
	case XFRM_MODE_TUNNEL:
		return FUNC2(x, skb, features);
	case XFRM_MODE_TRANSPORT:
		return FUNC1(x, skb, features);
	}

	return FUNC0(-EOPNOTSUPP);
}
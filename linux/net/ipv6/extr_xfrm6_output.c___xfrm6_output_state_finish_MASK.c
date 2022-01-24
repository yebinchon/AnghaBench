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
struct xfrm_state_afinfo {int (* output_finish ) (struct sock*,struct sk_buff*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  family; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct xfrm_state_afinfo const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 
 struct xfrm_state_afinfo* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sock *sk,
				       struct sk_buff *skb)
{
	const struct xfrm_state_afinfo *afinfo;
	int ret = -EAFNOSUPPORT;

	FUNC2();
	afinfo = FUNC5(x->outer_mode.family);
	if (FUNC1(afinfo))
		ret = afinfo->output_finish(sk, skb);
	else
		FUNC0(skb);
	FUNC3();

	return ret;
}
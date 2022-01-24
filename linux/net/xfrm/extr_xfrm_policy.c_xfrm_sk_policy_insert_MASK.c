#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  add_time; } ;
struct xfrm_policy {scalar_t__ type; int /*<<< orphan*/  index; TYPE_1__ curlft; } ;
struct sock {int /*<<< orphan*/ * sk_policy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XFRM_POLICY_MAX ; 
 scalar_t__ XFRM_POLICY_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy*,struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_policy*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*,int) ; 

int FUNC12(struct sock *sk, int dir, struct xfrm_policy *pol)
{
	struct net *net = FUNC4(sk);
	struct xfrm_policy *old_pol;

#ifdef CONFIG_XFRM_SUB_POLICY
	if (pol && pol->type != XFRM_POLICY_TYPE_MAIN)
		return -EINVAL;
#endif

	FUNC5(&net->xfrm.xfrm_policy_lock);
	old_pol = FUNC3(sk->sk_policy[dir],
				FUNC1(&net->xfrm.xfrm_policy_lock));
	if (pol) {
		pol->curlft.add_time = FUNC0();
		pol->index = FUNC7(net, XFRM_POLICY_MAX+dir, 0);
		FUNC10(pol, dir);
	}
	FUNC2(sk->sk_policy[dir], pol);
	if (old_pol) {
		if (pol)
			FUNC9(old_pol, pol);

		/* Unlinking succeeds always. This is the only function
		 * allowed to delete or replace socket policy.
		 */
		FUNC11(old_pol, dir);
	}
	FUNC6(&net->xfrm.xfrm_policy_lock);

	if (old_pol) {
		FUNC8(old_pol);
	}
	return 0;
}
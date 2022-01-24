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
struct xfrm_policy {int dummy; } ;
struct sock {int /*<<< orphan*/ * sk_policy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct xfrm_policy* FUNC0 (struct xfrm_policy const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sock *sk, const struct sock *osk)
{
	const struct xfrm_policy *p;
	struct xfrm_policy *np;
	int i, ret = 0;

	FUNC3();
	for (i = 0; i < 2; i++) {
		p = FUNC2(osk->sk_policy[i]);
		if (p) {
			np = FUNC0(p, i);
			if (FUNC5(!np)) {
				ret = -ENOMEM;
				break;
			}
			FUNC1(sk->sk_policy[i], np);
		}
	}
	FUNC4();
	return ret;
}
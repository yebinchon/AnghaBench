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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {scalar_t__ if_id; int /*<<< orphan*/  security; TYPE_1__ mark; int /*<<< orphan*/  selector; int /*<<< orphan*/  family; } ;
struct sock {int sk_mark; int /*<<< orphan*/ * sk_policy; } ;
struct flowi {int /*<<< orphan*/  flowi_secid; } ;

/* Variables and functions */
 struct xfrm_policy* FUNC0 (int) ; 
 int ESRCH ; 
 struct xfrm_policy* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_policy*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct flowi const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_policy *FUNC7(const struct sock *sk, int dir,
						 const struct flowi *fl,
						 u16 family, u32 if_id)
{
	struct xfrm_policy *pol;

	FUNC2();
 again:
	pol = FUNC1(sk->sk_policy[dir]);
	if (pol != NULL) {
		bool match;
		int err = 0;

		if (pol->family != family) {
			pol = NULL;
			goto out;
		}

		match = FUNC6(&pol->selector, fl, family);
		if (match) {
			if ((sk->sk_mark & pol->mark.m) != pol->mark.v ||
			    pol->if_id != if_id) {
				pol = NULL;
				goto out;
			}
			err = FUNC4(pol->security,
						      fl->flowi_secid,
						      dir);
			if (!err) {
				if (!FUNC5(pol))
					goto again;
			} else if (err == -ESRCH) {
				pol = NULL;
			} else {
				pol = FUNC0(err);
			}
		} else
			pol = NULL;
	}
out:
	FUNC3();
	return pol;
}
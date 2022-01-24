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
struct TYPE_4__ {int /*<<< orphan*/  all; } ;
struct xfrm_policy {TYPE_2__ walk; int /*<<< orphan*/  byidx; int /*<<< orphan*/  bydst_inexact_list; int /*<<< orphan*/  bydst; } ;
struct TYPE_3__ {int /*<<< orphan*/ * policy_count; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct net* FUNC6 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_policy *FUNC7(struct xfrm_policy *pol,
						int dir)
{
	struct net *net = FUNC6(pol);

	if (FUNC5(&pol->walk.all))
		return NULL;

	/* Socket policies are not hashed. */
	if (!FUNC3(&pol->bydst)) {
		FUNC2(&pol->bydst);
		FUNC1(&pol->bydst_inexact_list);
		FUNC0(&pol->byidx);
	}

	FUNC4(&pol->walk.all);
	net->xfrm.policy_count[dir]--;

	return pol;
}
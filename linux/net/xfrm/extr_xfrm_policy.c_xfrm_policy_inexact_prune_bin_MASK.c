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
struct TYPE_3__ {int /*<<< orphan*/  net; } ;
struct xfrm_pol_inexact_bin {TYPE_1__ k; } ;
struct TYPE_4__ {int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfrm_pol_inexact_bin*,int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct xfrm_pol_inexact_bin *b)
{
	struct net *net = FUNC1(&b->k.net);

	FUNC2(&net->xfrm.xfrm_policy_lock);
	FUNC0(b, false);
	FUNC3(&net->xfrm.xfrm_policy_lock);
}
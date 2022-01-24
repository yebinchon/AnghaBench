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
struct TYPE_4__ {scalar_t__ rt6i_uncached_list; int /*<<< orphan*/  rt6i_idev; } ;
struct TYPE_3__ {TYPE_2__ rt6; } ;
struct xfrm_dst {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_dst*) ; 

__attribute__((used)) static void FUNC5(struct dst_entry *dst)
{
	struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

	if (FUNC2(xdst->u.rt6.rt6i_idev))
		FUNC1(xdst->u.rt6.rt6i_idev);
	FUNC0(dst);
	if (xdst->u.rt6.rt6i_uncached_list)
		FUNC3(&xdst->u.rt6);
	FUNC4(xdst);
}
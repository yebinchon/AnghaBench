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
struct xfrm_if_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xfrm_if_cb const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_if_cb ; 
 int /*<<< orphan*/  xfrm_if_cb_lock ; 

void FUNC3(const struct xfrm_if_cb *ifcb)
{
	FUNC1(&xfrm_if_cb_lock);
	FUNC0(xfrm_if_cb, ifcb);
	FUNC2(&xfrm_if_cb_lock);
}
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
struct xfrm_state_afinfo {int dummy; } ;

/* Variables and functions */
 unsigned int NPROTO ; 
 struct xfrm_state_afinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * xfrm_state_afinfo ; 

struct xfrm_state_afinfo *FUNC4(unsigned int family)
{
	struct xfrm_state_afinfo *afinfo;
	if (FUNC3(family >= NPROTO))
		return NULL;
	FUNC1();
	afinfo = FUNC0(xfrm_state_afinfo[family]);
	if (FUNC3(!afinfo))
		FUNC2();
	return afinfo;
}
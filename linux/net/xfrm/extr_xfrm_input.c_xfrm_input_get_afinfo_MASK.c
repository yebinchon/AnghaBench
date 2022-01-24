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
struct xfrm_input_afinfo {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 struct xfrm_input_afinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * xfrm_input_afinfo ; 

__attribute__((used)) static const struct xfrm_input_afinfo *FUNC6(unsigned int family)
{
	const struct xfrm_input_afinfo *afinfo;

	if (FUNC1(family >= FUNC0(xfrm_input_afinfo)))
		return NULL;

	FUNC3();
	afinfo = FUNC2(xfrm_input_afinfo[family]);
	if (FUNC5(!afinfo))
		FUNC4();
	return afinfo;
}
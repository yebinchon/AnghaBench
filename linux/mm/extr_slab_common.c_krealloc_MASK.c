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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* ZERO_SIZE_PTR ; 
 void* FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (int) ; 

void *FUNC4(const void *p, size_t new_size, gfp_t flags)
{
	void *ret;

	if (FUNC3(!new_size)) {
		FUNC2(p);
		return ZERO_SIZE_PTR;
	}

	ret = FUNC0(p, new_size, flags);
	if (ret && FUNC1(p) != FUNC1(ret))
		FUNC2(p);

	return ret;
}
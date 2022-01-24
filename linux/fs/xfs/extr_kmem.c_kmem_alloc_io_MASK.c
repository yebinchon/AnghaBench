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
typedef  int xfs_km_flags_t ;

/* Variables and functions */
 int KM_MAYFAIL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int,int /*<<< orphan*/ ) ; 

void *
FUNC5(size_t size, int align_mask, xfs_km_flags_t flags)
{
	void	*ptr;

	FUNC4(size, flags, _RET_IP_);

	if (FUNC0(align_mask >= PAGE_SIZE))
		align_mask = PAGE_SIZE - 1;

	ptr = FUNC3(size, flags | KM_MAYFAIL);
	if (ptr) {
		if (!((uintptr_t)ptr & align_mask))
			return ptr;
		FUNC2(ptr);
	}
	return FUNC1(size, flags);
}
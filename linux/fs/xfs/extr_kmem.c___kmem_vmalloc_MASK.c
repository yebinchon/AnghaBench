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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int KM_NOFS ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 void* FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static void *
FUNC4(size_t size, xfs_km_flags_t flags)
{
	unsigned nofs_flag = 0;
	void	*ptr;
	gfp_t	lflags = FUNC1(flags);

	if (flags & KM_NOFS)
		nofs_flag = FUNC3();

	ptr = FUNC0(size, lflags, PAGE_KERNEL);

	if (flags & KM_NOFS)
		FUNC2(nofs_flag);

	return ptr;
}
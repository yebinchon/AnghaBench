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
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_KMALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *FUNC4(struct f2fs_sb_info *sbi,
					size_t size, gfp_t flags)
{
	void *ret;

	if (FUNC3(sbi, FAULT_KMALLOC)) {
		FUNC0(FAULT_KMALLOC);
		return NULL;
	}

	ret = FUNC1(size, flags);
	if (ret)
		return ret;

	return FUNC2(size, flags);
}
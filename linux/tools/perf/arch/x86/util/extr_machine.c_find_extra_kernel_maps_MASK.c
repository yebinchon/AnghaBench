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
typedef  scalar_t__ u64 ;
struct extra_kernel_map_info {scalar_t__ entry_trampoline; } ;

/* Variables and functions */
 scalar_t__ STB_GLOBAL ; 
 int FUNC0 (struct extra_kernel_map_info*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ page_size ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(void *arg, const char *name, char type,
				  u64 start)
{
	struct extra_kernel_map_info *mi = arg;

	if (!mi->entry_trampoline && FUNC2(type) == STB_GLOBAL &&
	    !FUNC3(name, "_entry_trampoline")) {
		mi->entry_trampoline = start;
		return 0;
	}

	if (FUNC1(name)) {
		u64 end = start + page_size;

		return FUNC0(mi, start, end, 0, name);
	}

	return 0;
}
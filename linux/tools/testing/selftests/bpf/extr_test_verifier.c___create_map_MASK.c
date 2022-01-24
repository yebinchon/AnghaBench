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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ BPF_F_NO_PREALLOC ; 
 scalar_t__ BPF_MAP_TYPE_HASH ; 
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(uint32_t type, uint32_t size_key,
			uint32_t size_value, uint32_t max_elem,
			uint32_t extra_flags)
{
	int fd;

	fd = FUNC0(type, size_key, size_value, max_elem,
			    (type == BPF_MAP_TYPE_HASH ?
			     BPF_F_NO_PREALLOC : 0) | extra_flags);
	if (fd < 0) {
		if (FUNC2(type))
			return -1;
		FUNC1("Failed to create hash map '%s'!\n", FUNC3(errno));
	}

	return fd;
}
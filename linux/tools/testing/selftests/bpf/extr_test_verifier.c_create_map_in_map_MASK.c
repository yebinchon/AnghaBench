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

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY_OF_MAPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int inner_map_fd, outer_map_fd;

	inner_map_fd = FUNC0(BPF_MAP_TYPE_ARRAY, sizeof(int),
				      sizeof(int), 1, 0);
	if (inner_map_fd < 0) {
		if (FUNC4(BPF_MAP_TYPE_ARRAY))
			return -1;
		FUNC3("Failed to create array '%s'!\n", FUNC5(errno));
		return inner_map_fd;
	}

	outer_map_fd = FUNC1(BPF_MAP_TYPE_ARRAY_OF_MAPS, NULL,
					     sizeof(int), inner_map_fd, 1, 0);
	if (outer_map_fd < 0) {
		if (FUNC4(BPF_MAP_TYPE_ARRAY_OF_MAPS))
			return -1;
		FUNC3("Failed to create array of maps '%s'!\n",
		       FUNC5(errno));
	}

	FUNC2(inner_map_fd);

	return outer_map_fd;
}
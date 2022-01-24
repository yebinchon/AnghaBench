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
typedef  int __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 char* CGROUP_PATH ; 
 int NUM_CGROUP_LEVELS ; 
 scalar_t__ FUNC0 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

int FUNC5(int prog_id)
{
	__u64 actual_ids[NUM_CGROUP_LEVELS], expected_ids[NUM_CGROUP_LEVELS];
	__u32 level;
	int err = 0;
	int map_fd;

	expected_ids[0] = 0x100000001;	/* root cgroup */
	expected_ids[1] = FUNC2("");
	expected_ids[2] = FUNC2(CGROUP_PATH);
	expected_ids[3] = 0; /* non-existent cgroup */

	map_fd = FUNC3(prog_id);
	if (map_fd < 0)
		goto err;

	for (level = 0; level < NUM_CGROUP_LEVELS; ++level) {
		if (FUNC0(map_fd, &level, &actual_ids[level])) {
			FUNC4("Failed to lookup key %d", level);
			goto err;
		}
		if (actual_ids[level] != expected_ids[level]) {
			FUNC4("%llx (actual) != %llx (expected), level: %u\n",
				actual_ids[level], expected_ids[level], level);
			goto err;
		}
	}

	goto out;
err:
	err = -1;
out:
	if (map_fd >= 0)
		FUNC1(map_fd);
	return err;
}
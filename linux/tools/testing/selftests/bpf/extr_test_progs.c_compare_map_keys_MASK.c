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
struct bpf_stack_build_id {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int PERF_MAX_STACK_DEPTH ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ errno ; 

int FUNC2(int map1_fd, int map2_fd)
{
	__u32 key, next_key;
	char val_buf[PERF_MAX_STACK_DEPTH *
		     sizeof(struct bpf_stack_build_id)];
	int err;

	err = FUNC0(map1_fd, NULL, &key);
	if (err)
		return err;
	err = FUNC1(map2_fd, &key, val_buf);
	if (err)
		return err;

	while (FUNC0(map1_fd, &key, &next_key) == 0) {
		err = FUNC1(map2_fd, &next_key, val_buf);
		if (err)
			return err;

		key = next_key;
	}
	if (errno != ENOENT)
		return -1;

	return 0;
}
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
 int /*<<< orphan*/  BPF_EXIST ; 
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int MAP_SIZE ; 
 scalar_t__ TASKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int fn, void *data)
{
	int do_update = ((int *)data)[1];
	int fd = ((int *)data)[0];
	int i, key, value;

	for (i = fn; i < MAP_SIZE; i += TASKS) {
		key = value = i;

		if (do_update) {
			FUNC0(FUNC2(fd, &key, &value,
						   BPF_NOEXIST) == 0);
			FUNC0(FUNC2(fd, &key, &value,
						   BPF_EXIST) == 0);
		} else {
			FUNC0(FUNC1(fd, &key) == 0);
		}
	}
}
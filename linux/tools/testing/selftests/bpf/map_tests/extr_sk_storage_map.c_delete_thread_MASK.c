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
 int ENOENT ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sk_storage_map ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	int map_fd = FUNC1(sk_storage_map);
	int sk_fd = *(int *)arg;
	int err = 0; /* Suppress compiler false alarm */

	while (!FUNC4()) {
		err = FUNC2(map_fd, &sk_fd);
		if (err && errno != ENOENT) {
			err = -errno;
			FUNC3(stderr, "bpf_map_delete_elem: %d %d\n",
				err, errno);
			break;
		}
	}

	if (!FUNC4()) {
		FUNC5();
		return FUNC0(err);
	}

	return NULL;
}
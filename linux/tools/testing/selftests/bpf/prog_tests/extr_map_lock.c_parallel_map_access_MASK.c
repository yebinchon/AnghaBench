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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_LOCK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(void *arg)
{
	int err, map_fd = *(u32 *) arg;
	int vars[17], i, j, rnd, key = 0;

	for (i = 0; i < 10000; i++) {
		err = FUNC1(map_fd, &key, vars, BPF_F_LOCK);
		if (FUNC0(err)) {
			FUNC2("lookup failed\n");
			goto out;
		}
		if (FUNC0(vars[0] != 0)) {
			FUNC2("lookup #%d var[0]=%d\n", i, vars[0]);
			goto out;
		}
		rnd = vars[1];
		for (j = 2; j < 17; j++) {
			if (vars[j] == rnd)
				continue;
			FUNC2("lookup #%d var[1]=%d var[%d]=%d\n",
			       i, rnd, j, vars[j]);
			FUNC0(vars[j] != rnd);
			goto out;
		}
	}
out:
	FUNC3(arg);
}
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
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,unsigned long long*,unsigned long long*) ; 
 scalar_t__ FUNC2 (int,unsigned long long*,unsigned long long*,int /*<<< orphan*/ ) ; 
 int nr_cpus ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(int task, void *data)
{
	const unsigned int nr_stable_elems = 1000;
	const unsigned int nr_repeats = 100000;

	int map_fd = *(int *)data;
	unsigned long long stable_base;
	unsigned long long key, value[nr_cpus];
	unsigned long long next_ins_key;
	unsigned int nr_losses = 0;
	unsigned int i;

	stable_base = task * nr_repeats * 2 + 1;
	next_ins_key = stable_base;
	value[0] = 1234;
	for (i = 0; i < nr_stable_elems; i++) {
		FUNC0(FUNC2(map_fd, &next_ins_key, value,
				       BPF_NOEXIST) == 0);
		next_ins_key++;
	}

	for (i = 0; i < nr_repeats; i++) {
		int rn;

		rn = FUNC4();

		if (rn % 10) {
			key = rn % nr_stable_elems + stable_base;
			FUNC1(map_fd, &key, value);
		} else {
			FUNC2(map_fd, &next_ins_key, value,
					BPF_NOEXIST);
			next_ins_key++;
		}
	}

	key = stable_base;
	for (i = 0; i < nr_stable_elems; i++) {
		if (FUNC1(map_fd, &key, value))
			nr_losses++;
		key++;
	}

	FUNC3("    task:%d nr_losses:%u\n", task, nr_losses);
}
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
 int BPF_F_ZERO_SEED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int,...) ; 
 scalar_t__ FUNC1 (int,void*,long long*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int map_flags ; 

__attribute__((used)) static void FUNC4(void)
{
	int i, first, second, old_flags;
	long long key, next_first, next_second;

	old_flags = map_flags;
	map_flags |= BPF_F_ZERO_SEED;

	first = FUNC3(3);
	second = FUNC3(3);

	for (i = 0; ; i++) {
		void *key_ptr = !i ? NULL : &key;

		if (FUNC1(first, key_ptr, &next_first) != 0)
			break;

		FUNC0(FUNC1(second, key_ptr, &next_second) != 0,
		      "next_key for second map must succeed",
		      "key_ptr: %p", key_ptr);
		FUNC0(next_first != next_second,
		      "keys must match",
		      "i: %d first: %lld second: %lld\n", i,
		      next_first, next_second);

		key = next_first;
	}

	map_flags = old_flags;
	FUNC2(first);
	FUNC2(second);
}
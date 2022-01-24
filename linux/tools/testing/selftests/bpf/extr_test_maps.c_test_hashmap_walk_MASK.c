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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,long long*,long long*) ; 
 scalar_t__ FUNC2 (int,long long*,long long*) ; 
 scalar_t__ FUNC3 (int,long long*,long long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(unsigned int task, void *data)
{
	int fd, i, max_entries = 1000;
	long long key, value, next_key;
	bool next_key_valid = true;

	fd = FUNC5(max_entries);

	for (i = 0; FUNC1(fd, !i ? NULL : &key,
					 &next_key) == 0; i++) {
		key = next_key;
		FUNC0(FUNC2(fd, &key, &value) == 0);
	}

	FUNC0(i == max_entries);

	FUNC0(FUNC1(fd, NULL, &key) == 0);
	for (i = 0; next_key_valid; i++) {
		next_key_valid = FUNC1(fd, &key, &next_key) == 0;
		FUNC0(FUNC2(fd, &key, &value) == 0);
		value++;
		FUNC0(FUNC3(fd, &key, &value, BPF_EXIST) == 0);
		key = next_key;
	}

	FUNC0(i == max_entries);

	for (i = 0; FUNC1(fd, !i ? NULL : &key,
					 &next_key) == 0; i++) {
		key = next_key;
		FUNC0(FUNC2(fd, &key, &value) == 0);
		FUNC0(value - 1 == key);
	}

	FUNC0(i == max_entries);
	FUNC4(fd);
}
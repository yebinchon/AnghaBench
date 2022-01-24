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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_EXIST ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int /*<<< orphan*/  BPF_NOEXIST ; 
 scalar_t__ E2BIG ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int*) ; 
 int FUNC3 (int,int*,int*) ; 
 int FUNC4 (int,int*,long long*) ; 
 int FUNC5 (int,int*,long long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(unsigned int task, void *data)
{
	int key, next_key, fd;
	long long value;

	fd = FUNC1(BPF_MAP_TYPE_ARRAY, sizeof(key), sizeof(value),
			    2, 0);
	if (fd < 0) {
		FUNC8("Failed to create arraymap '%s'!\n", FUNC9(errno));
		FUNC7(1);
	}

	key = 1;
	value = 1234;
	/* Insert key=1 element. */
	FUNC0(FUNC5(fd, &key, &value, BPF_ANY) == 0);

	value = 0;
	FUNC0(FUNC5(fd, &key, &value, BPF_NOEXIST) == -1 &&
	       errno == EEXIST);

	/* Check that key=1 can be found. */
	FUNC0(FUNC4(fd, &key, &value) == 0 && value == 1234);

	key = 0;
	/* Check that key=0 is also found and zero initialized. */
	FUNC0(FUNC4(fd, &key, &value) == 0 && value == 0);

	/* key=0 and key=1 were inserted, check that key=2 cannot be inserted
	 * due to max_entries limit.
	 */
	key = 2;
	FUNC0(FUNC5(fd, &key, &value, BPF_EXIST) == -1 &&
	       errno == E2BIG);

	/* Check that key = 2 doesn't exist. */
	FUNC0(FUNC4(fd, &key, &value) == -1 && errno == ENOENT);

	/* Iterate over two elements. */
	FUNC0(FUNC3(fd, NULL, &next_key) == 0 &&
	       next_key == 0);
	FUNC0(FUNC3(fd, &key, &next_key) == 0 &&
	       next_key == 0);
	FUNC0(FUNC3(fd, &next_key, &next_key) == 0 &&
	       next_key == 1);
	FUNC0(FUNC3(fd, &next_key, &next_key) == -1 &&
	       errno == ENOENT);

	/* Delete shouldn't succeed. */
	key = 1;
	FUNC0(FUNC2(fd, &key) == -1 && errno == EINVAL);

	FUNC6(fd);
}
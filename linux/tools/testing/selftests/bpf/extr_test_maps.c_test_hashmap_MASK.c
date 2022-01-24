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
 int BPF_ANY ; 
 int BPF_EXIST ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_HASH ; 
 int BPF_NOEXIST ; 
 scalar_t__ E2BIG ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,long long*) ; 
 int FUNC3 (int,long long*,long long*) ; 
 int FUNC4 (int,long long*,long long*) ; 
 int FUNC5 (int,long long*,long long*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  map_flags ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(unsigned int task, void *data)
{
	long long key, next_key, first_key, value;
	int fd;

	fd = FUNC1(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
			    2, map_flags);
	if (fd < 0) {
		FUNC8("Failed to create hashmap '%s'!\n", FUNC9(errno));
		FUNC7(1);
	}

	key = 1;
	value = 1234;
	/* Insert key=1 element. */
	FUNC0(FUNC5(fd, &key, &value, BPF_ANY) == 0);

	value = 0;
	/* BPF_NOEXIST means add new element if it doesn't exist. */
	FUNC0(FUNC5(fd, &key, &value, BPF_NOEXIST) == -1 &&
	       /* key=1 already exists. */
	       errno == EEXIST);

	/* -1 is an invalid flag. */
	FUNC0(FUNC5(fd, &key, &value, -1) == -1 &&
	       errno == EINVAL);

	/* Check that key=1 can be found. */
	FUNC0(FUNC4(fd, &key, &value) == 0 && value == 1234);

	key = 2;
	/* Check that key=2 is not found. */
	FUNC0(FUNC4(fd, &key, &value) == -1 && errno == ENOENT);

	/* BPF_EXIST means update existing element. */
	FUNC0(FUNC5(fd, &key, &value, BPF_EXIST) == -1 &&
	       /* key=2 is not there. */
	       errno == ENOENT);

	/* Insert key=2 element. */
	FUNC0(FUNC5(fd, &key, &value, BPF_NOEXIST) == 0);

	/* key=1 and key=2 were inserted, check that key=0 cannot be
	 * inserted due to max_entries limit.
	 */
	key = 0;
	FUNC0(FUNC5(fd, &key, &value, BPF_NOEXIST) == -1 &&
	       errno == E2BIG);

	/* Update existing element, though the map is full. */
	key = 1;
	FUNC0(FUNC5(fd, &key, &value, BPF_EXIST) == 0);
	key = 2;
	FUNC0(FUNC5(fd, &key, &value, BPF_ANY) == 0);
	key = 3;
	FUNC0(FUNC5(fd, &key, &value, BPF_NOEXIST) == -1 &&
	       errno == E2BIG);

	/* Check that key = 0 doesn't exist. */
	key = 0;
	FUNC0(FUNC2(fd, &key) == -1 && errno == ENOENT);

	/* Iterate over two elements. */
	FUNC0(FUNC3(fd, NULL, &first_key) == 0 &&
	       (first_key == 1 || first_key == 2));
	FUNC0(FUNC3(fd, &key, &next_key) == 0 &&
	       (next_key == first_key));
	FUNC0(FUNC3(fd, &next_key, &next_key) == 0 &&
	       (next_key == 1 || next_key == 2) &&
	       (next_key != first_key));
	FUNC0(FUNC3(fd, &next_key, &next_key) == -1 &&
	       errno == ENOENT);

	/* Delete both elements. */
	key = 1;
	FUNC0(FUNC2(fd, &key) == 0);
	key = 2;
	FUNC0(FUNC2(fd, &key) == 0);
	FUNC0(FUNC2(fd, &key) == -1 && errno == ENOENT);

	key = 0;
	/* Check that map is empty. */
	FUNC0(FUNC3(fd, NULL, &next_key) == -1 &&
	       errno == ENOENT);
	FUNC0(FUNC3(fd, &key, &next_key) == -1 &&
	       errno == ENOENT);

	FUNC6(fd);
}
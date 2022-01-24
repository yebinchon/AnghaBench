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
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_EXIST ; 
 int BPF_F_NO_PREALLOC ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_QUEUE ; 
 scalar_t__ E2BIG ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int const,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int map_flags ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 () ; 
 char* FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12(unsigned int task, void *data)
{
	const int MAP_SIZE = 32;
	__u32 vals[MAP_SIZE + MAP_SIZE/2], val;
	int fd, i;

	/* Fill test values to be used */
	for (i = 0; i < MAP_SIZE + MAP_SIZE/2; i++)
		vals[i] = FUNC10();

	/* Invalid key size */
	fd = FUNC1(BPF_MAP_TYPE_QUEUE, 4, sizeof(val), MAP_SIZE,
			    map_flags);
	FUNC0(fd < 0 && errno == EINVAL);

	fd = FUNC1(BPF_MAP_TYPE_QUEUE, 0, sizeof(val), MAP_SIZE,
			    map_flags);
	/* Queue map does not support BPF_F_NO_PREALLOC */
	if (map_flags & BPF_F_NO_PREALLOC) {
		FUNC0(fd < 0 && errno == EINVAL);
		return;
	}
	if (fd < 0) {
		FUNC9("Failed to create queuemap '%s'!\n", FUNC11(errno));
		FUNC8(1);
	}

	/* Push MAP_SIZE elements */
	for (i = 0; i < MAP_SIZE; i++)
		FUNC0(FUNC6(fd, NULL, &vals[i], 0) == 0);

	/* Check that element cannot be pushed due to max_entries limit */
	FUNC0(FUNC6(fd, NULL, &val, 0) == -1 &&
	       errno == E2BIG);

	/* Peek element */
	FUNC0(FUNC5(fd, NULL, &val) == 0 && val == vals[0]);

	/* Replace half elements */
	for (i = MAP_SIZE; i < MAP_SIZE + MAP_SIZE/2; i++)
		FUNC0(FUNC6(fd, NULL, &vals[i], BPF_EXIST) == 0);

	/* Pop all elements */
	for (i = MAP_SIZE/2; i < MAP_SIZE + MAP_SIZE/2; i++)
		FUNC0(FUNC4(fd, NULL, &val) == 0 &&
		       val == vals[i]);

	/* Check that there are not elements left */
	FUNC0(FUNC4(fd, NULL, &val) == -1 &&
	       errno == ENOENT);

	/* Check that non supported functions set errno to EINVAL */
	FUNC0(FUNC2(fd, NULL) == -1 && errno == EINVAL);
	FUNC0(FUNC3(fd, NULL, NULL) == -1 && errno == EINVAL);

	FUNC7(fd);
}
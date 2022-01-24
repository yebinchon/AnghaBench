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
 int BPF_F_RDONLY ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_HASH ; 
 scalar_t__ ENOENT ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  MAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int*,int*) ; 
 int FUNC3 (int,int*,int*) ; 
 int FUNC4 (int,int*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int map_flags ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
	int fd, key = 0, value = 0;

	fd = FUNC1(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
			    MAP_SIZE, map_flags | BPF_F_RDONLY);
	if (fd < 0) {
		FUNC6("Failed to create map for read only test '%s'!\n",
		       FUNC7(errno));
		FUNC5(1);
	}

	key = 1;
	value = 1234;
	/* Insert key=1 element. */
	FUNC0(FUNC4(fd, &key, &value, BPF_ANY) == -1 &&
	       errno == EPERM);

	/* Check that key=2 is not found. */
	FUNC0(FUNC3(fd, &key, &value) == -1 && errno == ENOENT);
	FUNC0(FUNC2(fd, &key, &value) == -1 && errno == ENOENT);
}
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
 int /*<<< orphan*/  BPF_MAP_TYPE_HASH ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  map_flags ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(unsigned int task, void *data)
{
	int fd, i, j;

	for (i = 1; i <= 512; i <<= 1)
		for (j = 1; j <= 1 << 18; j <<= 1) {
			fd = FUNC0(BPF_MAP_TYPE_HASH, i, j,
					    2, map_flags);
			if (fd < 0) {
				if (errno == ENOMEM)
					return;
				FUNC3("Failed to create hashmap key=%d value=%d '%s'\n",
				       i, j, FUNC4(errno));
				FUNC2(1);
			}
			FUNC1(fd);
			FUNC5(10); /* give kernel time to destroy */
		}
}
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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_DEVMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned int task, void *data)
{
	int fd;
	__u32 key, value;

	fd = FUNC0(BPF_MAP_TYPE_DEVMAP, sizeof(key), sizeof(value),
			    2, 0);
	if (fd < 0) {
		FUNC3("Failed to create devmap '%s'!\n", FUNC4(errno));
		FUNC2(1);
	}

	FUNC1(fd);
}
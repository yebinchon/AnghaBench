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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int*,char***) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int *argc, char ***argv, void *info, __u32 *info_len)
{
	int err;
	int fd;

	fd = FUNC2(argc, argv);
	if (fd < 0)
		return -1;

	err = FUNC0(fd, info, info_len);
	if (err) {
		FUNC3("can't get map info: %s", FUNC4(errno));
		FUNC1(fd);
		return err;
	}

	return fd;
}
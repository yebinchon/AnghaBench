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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int FUNC5(int cpu, unsigned int idx, unsigned long long *val)
{
	int fd;
	char msr_file_name[64];

	FUNC4(msr_file_name, "/dev/cpu/%d/msr", cpu);
	fd = FUNC2(msr_file_name, O_RDONLY);
	if (fd < 0)
		return -1;
	if (FUNC1(fd, idx, SEEK_CUR) == -1)
		goto err;
	if (FUNC3(fd, val, sizeof *val) != sizeof *val)
		goto err;
	FUNC0(fd);
	return 0;
 err:
	FUNC0(fd);
	return -1;
}
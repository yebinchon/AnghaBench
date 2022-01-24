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
 int O_APPEND ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char*,int) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4(int pid, int score)
{
	char path[PATH_MAX];
	int fd, len;

	FUNC3(path, "/proc/%d/oom_score_adj", pid);

	fd = FUNC2(path, O_WRONLY | O_APPEND);
	if (fd < 0)
		return fd;

	len = FUNC1(fd, "%d", score);
	if (len < 0) {
		FUNC0(fd);
		return len;
	}

	FUNC0(fd);
	return 0;
}
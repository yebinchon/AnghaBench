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
struct stat64 {int dummy; } ;
struct hostfs_stat {int dummy; } ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int,struct stat64*) ; 
 scalar_t__ FUNC1 (char const*,struct stat64*) ; 
 int /*<<< orphan*/  FUNC2 (struct stat64*,struct hostfs_stat*) ; 

int FUNC3(const char *path, struct hostfs_stat *p, int fd)
{
	struct stat64 buf;

	if (fd >= 0) {
		if (FUNC0(fd, &buf) < 0)
			return -errno;
	} else if (FUNC1(path, &buf) < 0) {
		return -errno;
	}
	FUNC2(&buf, p);
	return 0;
}
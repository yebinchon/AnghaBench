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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,size_t) ; 

unsigned int FUNC3(const char *path, char *buf, size_t buflen)
{
	int fd;
	ssize_t numread;

	fd = FUNC1(path, O_RDONLY);
	if (fd == -1)
		return 0;

	numread = FUNC2(fd, buf, buflen - 1);
	if (numread < 1) {
		FUNC0(fd);
		return 0;
	}

	buf[numread] = '\0';
	FUNC0(fd);

	return (unsigned int) numread;
}
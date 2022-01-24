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

__attribute__((used)) static ssize_t FUNC3(const char *path, char *buf, size_t max_len)
{
	ssize_t len;
	int fd;

	fd = FUNC1(path, O_RDONLY);
	if (fd < 0)
		return fd;

	len = FUNC2(fd, buf, max_len - 1);
	if (len < 0)
		goto out;

	buf[len] = 0;
out:
	FUNC0(fd);
	return len;
}
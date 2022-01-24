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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,void const*,size_t) ; 

__attribute__((used)) static void FUNC5(const char *filename, const void *buf, size_t count,
			  int allowed_errno)
{
	int fd, saved_errno;
	ssize_t ret;

	fd = FUNC2(filename, O_WRONLY | O_CLOEXEC);
	if (fd < 0)
		FUNC1("%s - Failed to open file %s\n",
				   FUNC3(errno), filename);

	ret = FUNC4(fd, buf, count);
	if (ret < 0) {
		if (allowed_errno && (errno == allowed_errno)) {
			FUNC0(fd);
			return;
		}

		goto on_error;
	}

	if ((size_t)ret != count)
		goto on_error;

	FUNC0(fd);
	return;

on_error:
	saved_errno = errno;
	FUNC0(fd);
	errno = saved_errno;

	if (ret < 0)
		FUNC1("%s - Failed to write to file %s\n",
				   FUNC3(errno), filename);

	FUNC1("Failed to write to file %s\n", filename);
}
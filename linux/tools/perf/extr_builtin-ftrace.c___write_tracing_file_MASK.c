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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int O_APPEND ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC7 (char const*) ; 
 size_t FUNC8 (char const*) ; 
 size_t FUNC9 (int,char*,size_t) ; 

__attribute__((used)) static int FUNC10(const char *name, const char *val, bool append)
{
	char *file;
	int fd, ret = -1;
	ssize_t size = FUNC8(val);
	int flags = O_WRONLY;
	char errbuf[512];
	char *val_copy;

	file = FUNC2(name);
	if (!file) {
		FUNC4("cannot get tracing file: %s\n", name);
		return -1;
	}

	if (append)
		flags |= O_APPEND;
	else
		flags |= O_TRUNC;

	fd = FUNC3(file, flags);
	if (fd < 0) {
		FUNC4("cannot open tracing file: %s: %s\n",
			 name, FUNC6(errno, errbuf, sizeof(errbuf)));
		goto out;
	}

	/*
	 * Copy the original value and append a '\n'. Without this,
	 * the kernel can hide possible errors.
	 */
	val_copy = FUNC7(val);
	if (!val_copy)
		goto out_close;
	val_copy[size] = '\n';

	if (FUNC9(fd, val_copy, size + 1) == size + 1)
		ret = 0;
	else
		FUNC4("write '%s' to tracing/%s failed: %s\n",
			 val, name, FUNC6(errno, errbuf, sizeof(errbuf)));

	FUNC1(val_copy);
out_close:
	FUNC0(fd);
out:
	FUNC5(file);
	return ret;
}
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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(const char *name, loff_t sz, unsigned int flags)
{
	int r, fd;

	fd = FUNC3(name, flags);
	if (fd < 0) {
		FUNC2("memfd_create(\"%s\", %u) failed: %m\n",
		       name, flags);
		FUNC0();
	}

	r = FUNC1(fd, sz);
	if (r < 0) {
		FUNC2("ftruncate(%llu) failed: %m\n", (unsigned long long)sz);
		FUNC0();
	}

	return fd;
}
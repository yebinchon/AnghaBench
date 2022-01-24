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
 size_t PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,unsigned long) ; 

__attribute__((used)) static bool
FUNC4(unsigned long magic, char *mnt, const char *mntpt)
{
	size_t src_len;

	if (FUNC3(mntpt, magic))
		return false;

	src_len = FUNC2(mntpt);
	if (src_len + 1 >= PATH_MAX) {
		FUNC0("tracefs mount point name too long");
		return false;
	}

	FUNC1(mnt, mntpt);
	return true;
}
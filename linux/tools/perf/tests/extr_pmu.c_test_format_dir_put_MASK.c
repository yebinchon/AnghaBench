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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char *dir)
{
	char buf[PATH_MAX];
	FUNC0(buf, PATH_MAX, "rm -f %s/*\n", dir);
	if (FUNC1(buf))
		return -1;

	FUNC0(buf, PATH_MAX, "rmdir %s\n", dir);
	return FUNC1(buf);
}
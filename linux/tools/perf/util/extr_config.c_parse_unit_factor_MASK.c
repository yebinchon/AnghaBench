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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *end, unsigned long *val)
{
	if (!*end)
		return 1;
	else if (!FUNC0(end, "k")) {
		*val *= 1024;
		return 1;
	}
	else if (!FUNC0(end, "m")) {
		*val *= 1024 * 1024;
		return 1;
	}
	else if (!FUNC0(end, "g")) {
		*val *= 1024 * 1024 * 1024;
		return 1;
	}
	return 0;
}
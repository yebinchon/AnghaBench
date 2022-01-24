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
 scalar_t__ IFNAMSIZ ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__) ; 

bool FUNC3(const char *name)
{
	if (*name == '\0')
		return false;
	if (FUNC2(name, IFNAMSIZ) == IFNAMSIZ)
		return false;
	if (!FUNC1(name, ".") || !FUNC1(name, ".."))
		return false;

	while (*name) {
		if (*name == '/' || *name == ':' || FUNC0(*name))
			return false;
		name++;
	}
	return true;
}
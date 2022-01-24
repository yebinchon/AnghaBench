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
 int /*<<< orphan*/  FUNC0 (char**,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(char **out, const char *path)
{
	if (path && *path) {
		if (FUNC1(path))
			FUNC0(out, path);
		else
			FUNC0(out, FUNC2(path));

		FUNC0(out, ":");
	}
}
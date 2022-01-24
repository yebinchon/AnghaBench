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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*,void const*) ; 

int FUNC3(const char *filename, const void *blob)
{
	int ret = FUNC2(filename, blob);

	if (ret) {
		FUNC0(stderr, "Couldn't write blob to '%s': %s\n", filename,
			FUNC1(ret));
	}
	return ret ? -1 : 0;
}
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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 

FILE *FUNC2(const char *path, const char *mode)
{
	FILE *filep = FUNC1(path, "r");

	if (!filep)
		FUNC0(1, "%s: open failed", path);
	return filep;
}
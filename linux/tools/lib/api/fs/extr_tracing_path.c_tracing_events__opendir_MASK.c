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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

DIR *FUNC3(void)
{
	DIR *dir = NULL;
	char *path = FUNC0("events");

	if (path) {
		dir = FUNC1(path);
		FUNC2(path);
	}

	return dir;
}
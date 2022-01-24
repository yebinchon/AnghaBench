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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char const**,int*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(int l)
{
	const char *file;
	char buf[120];
	int e, line;

	if (FUNC2() == 0)
		return;
	FUNC3(stderr, "At main.c:%d:\n", l);

	while ((e = FUNC1(&file, &line))) {
		FUNC0(e, buf);
		FUNC3(stderr, "- SSL %s: %s:%d\n", buf, file, line);
	}
}
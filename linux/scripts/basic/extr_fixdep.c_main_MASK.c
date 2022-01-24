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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 

int FUNC5(int argc, char *argv[])
{
	const char *depfile, *target, *cmdline;
	void *buf;

	if (argc != 4)
		FUNC3();

	depfile = argv[1];
	target = argv[2];
	cmdline = argv[3];

	FUNC4("cmd_%s := %s\n\n", target, cmdline);

	buf = FUNC2(depfile);
	FUNC1(buf, target);
	FUNC0(buf);

	return 0;
}
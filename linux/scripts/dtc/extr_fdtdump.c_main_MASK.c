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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*) ; 

int FUNC3(int argc, char *argv[])
{
	char *buf;

	if (argc < 2) {
		FUNC1(stderr, "supply input filename\n");
		return 5;
	}

	buf = FUNC2(argv[1]);
	if (buf)
		FUNC0(buf);
	else
		return 10;

	return 0;
}
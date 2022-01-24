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
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  verblevel ; 

int FUNC4(int argc, char **argv)
{
	int c, err = 0;

	while ((c = FUNC3(argc, argv, "v")) != EOF) {
		switch (c) {
		case 'v':
			verblevel++;
			break;

		case '?':
		default:
			err++;
			break;
		}
	}
	if (err || argc > optind) {
		FUNC2(stderr, "Usage: lsiio [options]...\n"
			"List industrial I/O devices\n"
			"  -v  Increase verbosity (may be given multiple times)\n");
		FUNC1(1);
	}

	return FUNC0();
}
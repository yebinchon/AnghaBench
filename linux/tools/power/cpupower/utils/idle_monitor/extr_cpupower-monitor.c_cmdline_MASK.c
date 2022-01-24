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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  interval ; 
 scalar_t__ list ; 
 scalar_t__ mode ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ show ; 
 scalar_t__ show_all ; 
 int /*<<< orphan*/  show_monitors_param ; 
 int wake_cpus ; 

__attribute__((used)) static void FUNC4(int argc, char *argv[])
{
	int opt;
	progname = FUNC1(argv[0]);

	while ((opt = FUNC2(argc, argv, "+lci:m:")) != -1) {
		switch (opt) {
		case 'l':
			if (mode)
				FUNC3();
			mode = list;
			break;
		case 'i':
			/* only allow -i with -m or no option */
			if (mode && mode != show)
				FUNC3();
			interval = FUNC0(optarg);
			break;
		case 'm':
			if (mode)
				FUNC3();
			mode = show;
			show_monitors_param = optarg;
			break;
		case 'c':
			wake_cpus = 1;
			break;
		default:
			FUNC3();
		}
	}
	if (!mode)
		mode = show_all;
}
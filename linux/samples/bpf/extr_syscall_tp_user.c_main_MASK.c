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
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	int opt, num_progs = 1;
	char filename[256];

	while ((opt = FUNC1(argc, argv, "i:h")) != -1) {
		switch (opt) {
		case 'i':
			num_progs = FUNC0(optarg);
			break;
		case 'h':
		default:
			FUNC5(argv[0]);
			return 0;
		}
	}

	FUNC2(RLIMIT_MEMLOCK, &r);
	FUNC3(filename, sizeof(filename), "%s_kern.o", argv[0]);

	return FUNC4(filename, num_progs);
}
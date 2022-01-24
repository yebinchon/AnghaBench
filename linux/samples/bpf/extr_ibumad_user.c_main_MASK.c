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
typedef  int /*<<< orphan*/  bpf_file ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dump_exit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  long_options ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char **argv)
{
	unsigned long delay = 5;
	int longindex = 0;
	int opt;
	char bpf_file[256];

	/* Create the eBPF kernel code path name.
	 * This follows the pattern of all of the other bpf samples
	 */
	FUNC6(bpf_file, sizeof(bpf_file), "%s_kern.o", argv[0]);

	/* Do one final dump when exiting */
	FUNC4(SIGINT, dump_exit);
	FUNC4(SIGTERM, dump_exit);

	while ((opt = FUNC2(argc, argv, "hd:rSw",
				  long_options, &longindex)) != -1) {
		switch (opt) {
		case 'd':
			delay = FUNC7(optarg, NULL, 0);
			if (delay == ULONG_MAX || delay < 0 ||
			    delay > 1000000) {
				FUNC1(stderr, "ERROR: invalid delay : %s\n",
					optarg);
				FUNC8(argv[0]);
				return 1;
			}
			break;
		default:
		case 'h':
			FUNC8(argv[0]);
			return 1;
		}
	}

	if (FUNC3(bpf_file)) {
		FUNC1(stderr, "ERROR: failed to load eBPF from file : %s\n",
			bpf_file);
		return 1;
	}

	while (1) {
		FUNC5(delay);
		FUNC0();
	}

	return 0;
}
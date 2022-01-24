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
struct hpet_info {int hi_flags; } ;
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  F_SETOWN ; 
 int /*<<< orphan*/  HPET_EPI ; 
 int /*<<< orphan*/  HPET_IE_ON ; 
 int /*<<< orphan*/  HPET_INFO ; 
 int /*<<< orphan*/  HPET_IRQFREQ ; 
 int O_ASYNC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIG_ERR ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  hpet_sigio ; 
 int hpet_sigio_count ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC9(int argc, const char **argv)
{
	unsigned long		freq;
	int			iterations, i, fd, value;
	sig_t			oldsig;
	struct hpet_info	info;

	hpet_sigio_count = 0;
	fd = -1;

	if ((oldsig = FUNC8(SIGIO, hpet_sigio)) == SIG_ERR) {
		FUNC3(stderr, "hpet_fasync: failed to set signal handler\n");
		return;
	}

	if (argc != 3) {
		FUNC3(stderr, "hpet_fasync: device-name freq iterations\n");
		goto out;
	}

	fd = FUNC6(argv[0], O_RDONLY);

	if (fd < 0) {
		FUNC3(stderr, "hpet_fasync: failed to open %s\n", argv[0]);
		return;
	}


	if ((FUNC2(fd, F_SETOWN, FUNC4()) == 1) ||
		((value = FUNC2(fd, F_GETFL)) == 1) ||
		(FUNC2(fd, F_SETFL, value | O_ASYNC) == 1)) {
		FUNC3(stderr, "hpet_fasync: fcntl failed\n");
		goto out;
	}

	freq = FUNC0(argv[1]);
	iterations = FUNC0(argv[2]);

	if (FUNC5(fd, HPET_IRQFREQ, freq) < 0) {
		FUNC3(stderr, "hpet_fasync: HPET_IRQFREQ failed\n");
		goto out;
	}

	if (FUNC5(fd, HPET_INFO, &info) < 0) {
		FUNC3(stderr, "hpet_fasync: failed to get info\n");
		goto out;
	}

	FUNC3(stderr, "hpet_fasync: info.hi_flags 0x%x\n", info.hi_flags);

	if (info.hi_flags && (FUNC5(fd, HPET_EPI, 0) < 0)) {
		FUNC3(stderr, "hpet_fasync: HPET_EPI failed\n");
		goto out;
	}

	if (FUNC5(fd, HPET_IE_ON, 0) < 0) {
		FUNC3(stderr, "hpet_fasync, HPET_IE_ON failed\n");
		goto out;
	}

	for (i = 0; i < iterations; i++) {
		(void) FUNC7();
		FUNC3(stderr, "hpet_fasync: count = %d\n", hpet_sigio_count);
	}

out:
	FUNC8(SIGIO, oldsig);

	if (fd >= 0)
		FUNC1(fd);

	return;
}
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
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  buf ; 
 int FUNC0 () ; 
 scalar_t__ cfg_expect_failure ; 
 int cfg_num_pkt ; 
 int cfg_num_secs ; 
 int /*<<< orphan*/  cfg_only_rx ; 
 int /*<<< orphan*/  cfg_only_tx ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 () ; 

__attribute__((used)) static int FUNC10(void)
{
	unsigned long tstop, treport, tcur;
	int fdt = -1, fdr = -1, len, tx = 0, rx = 0;

	if (!cfg_only_tx)
		fdr = FUNC7();
	if (!cfg_only_rx)
		fdt = FUNC8();

	len = FUNC0();

	tcur = FUNC9();
	treport = tcur + 1000;
	tstop = tcur + (cfg_num_secs * 1000);

	while (1) {
		if (!cfg_only_rx)
			tx += FUNC4(fdt, buf, len);

		if (!cfg_only_tx)
			rx += FUNC3(fdr);

		if (cfg_num_secs) {
			tcur = FUNC9();
			if (tcur >= tstop)
				break;
			if (tcur >= treport) {
				FUNC6(stderr, "pkts: tx=%u rx=%u\n", tx, rx);
				tx = 0;
				rx = 0;
				treport = tcur + 1000;
			}
		} else {
			if (tx == cfg_num_pkt)
				break;
		}
	}

	/* read straggler packets, if any */
	if (rx < tx) {
		tstop = FUNC9() + 100;
		while (rx < tx) {
			tcur = FUNC9();
			if (tcur >= tstop)
				break;

			FUNC2(fdr, POLLIN, tstop - tcur);
			rx += FUNC3(fdr);
		}
	}

	FUNC6(stderr, "pkts: tx=%u rx=%u\n", tx, rx);

	if (fdr != -1 && FUNC1(fdr))
		FUNC5(1, errno, "close rx");
	if (fdt != -1 && FUNC1(fdt))
		FUNC5(1, errno, "close tx");

	/*
	 * success (== 0) only if received all packets
	 * unless failure is expected, in which case none must arrive.
	 */
	if (cfg_expect_failure)
		return rx != 0;
	else
		return rx != tx;
}
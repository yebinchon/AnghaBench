#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tx_npkts; int /*<<< orphan*/  prev_tx_npkts; int /*<<< orphan*/  rx_npkts; int /*<<< orphan*/  prev_rx_npkts; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int num_socks ; 
 unsigned long prev_time ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__** xsks ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long now = FUNC0();
	long dt = now - prev_time;
	int i;

	prev_time = now;

	for (i = 0; i < num_socks && xsks[i]; i++) {
		char *fmt = "%-15s %'-11.0f %'-11lu\n";
		double rx_pps, tx_pps;

		rx_pps = (xsks[i]->rx_npkts - xsks[i]->prev_rx_npkts) *
			 1000000000. / dt;
		tx_pps = (xsks[i]->tx_npkts - xsks[i]->prev_tx_npkts) *
			 1000000000. / dt;

		FUNC2("\n sock%d@", i);
		FUNC1(false);
		FUNC2("\n");

		FUNC2("%-15s %-11s %-11s %-11.2f\n", "", "pps", "pkts",
		       dt / 1000000000.);
		FUNC2(fmt, "rx", rx_pps, xsks[i]->rx_npkts);
		FUNC2(fmt, "tx", tx_pps, xsks[i]->tx_npkts);

		xsks[i]->prev_rx_npkts = xsks[i]->rx_npkts;
		xsks[i]->prev_tx_npkts = xsks[i]->tx_npkts;
	}
}
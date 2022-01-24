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
 scalar_t__ BENCH_L2FWD ; 
 scalar_t__ BENCH_RXDROP ; 
 scalar_t__ BENCH_TXONLY ; 
 int XDP_FLAGS_DRV_MODE ; 
 int XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ opt_bench ; 
 char* opt_if ; 
 scalar_t__ opt_poll ; 
 int opt_queue ; 
 int opt_xdp_flags ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(bool running)
{
	const char *bench_str = "INVALID";

	if (opt_bench == BENCH_RXDROP)
		bench_str = "rxdrop";
	else if (opt_bench == BENCH_TXONLY)
		bench_str = "txonly";
	else if (opt_bench == BENCH_L2FWD)
		bench_str = "l2fwd";

	FUNC1("%s:%d %s ", opt_if, opt_queue, bench_str);
	if (opt_xdp_flags & XDP_FLAGS_SKB_MODE)
		FUNC1("xdp-skb ");
	else if (opt_xdp_flags & XDP_FLAGS_DRV_MODE)
		FUNC1("xdp-drv ");
	else
		FUNC1("	");

	if (opt_poll)
		FUNC1("poll() ");

	if (running) {
		FUNC1("running...");
		FUNC0(stdout);
	}
}
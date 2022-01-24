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
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_tx_delay_enabled ; 

__attribute__((used)) static void FUNC4(void)
{
	if (!FUNC3(&tcp_tx_delay_enabled)) {
		static int __tcp_tx_delay_enabled = 0;

		if (FUNC0(&__tcp_tx_delay_enabled, 0, 1) == 0) {
			FUNC2(&tcp_tx_delay_enabled);
			FUNC1("TCP_TX_DELAY enabled\n");
		}
	}
}
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
 int /*<<< orphan*/  G2_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
	int time_count;
	time_count = 0;
	while (1) {
		if (!(FUNC0(G2_FIFO) & 0x11))
			break;
		/* To ensure hardware failure doesn't wedge kernel */
		time_count++;
		if (time_count > 0x10000) {
			FUNC1
			    ("WARNING: G2 FIFO appears to be blocked.\n");
			break;
		}
	}
}
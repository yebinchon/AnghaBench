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
 int PACKET_FANOUT_FLAG_ROLLOVER ; 
 int PACKET_FANOUT_ROLLOVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(stderr, "test: control single socket\n");

	if (FUNC2(PACKET_FANOUT_ROLLOVER |
			       PACKET_FANOUT_FLAG_ROLLOVER, 0) != -1) {
		FUNC1(stderr, "ERROR: opened socket with dual rollover\n");
		FUNC0(1);
	}
}
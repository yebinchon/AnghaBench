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
 int PACKET_FANOUT_CPU ; 
 int PACKET_FANOUT_FLAG_DEFRAG ; 
 int PACKET_FANOUT_FLAG_ROLLOVER ; 
 int PACKET_FANOUT_HASH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(void)
{
	int fds[2];

	FUNC2(stderr, "test: control multiple sockets\n");

	fds[0] = FUNC3(PACKET_FANOUT_HASH, 0);
	if (fds[0] == -1) {
		FUNC2(stderr, "ERROR: failed to open HASH socket\n");
		FUNC1(1);
	}
	if (FUNC3(PACKET_FANOUT_HASH |
			       PACKET_FANOUT_FLAG_DEFRAG, 0) != -1) {
		FUNC2(stderr, "ERROR: joined group with wrong flag defrag\n");
		FUNC1(1);
	}
	if (FUNC3(PACKET_FANOUT_HASH |
			       PACKET_FANOUT_FLAG_ROLLOVER, 0) != -1) {
		FUNC2(stderr, "ERROR: joined group with wrong flag ro\n");
		FUNC1(1);
	}
	if (FUNC3(PACKET_FANOUT_CPU, 0) != -1) {
		FUNC2(stderr, "ERROR: joined group with wrong mode\n");
		FUNC1(1);
	}
	fds[1] = FUNC3(PACKET_FANOUT_HASH, 0);
	if (fds[1] == -1) {
		FUNC2(stderr, "ERROR: failed to join group\n");
		FUNC1(1);
	}
	if (FUNC0(fds[1]) || FUNC0(fds[0])) {
		FUNC2(stderr, "ERROR: closing sockets\n");
		FUNC1(1);
	}
}
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
typedef  int uint16_t ;

/* Variables and functions */
 int PACKET_FANOUT_CPU ; 
 int PACKET_FANOUT_FLAG_UNIQUEID ; 
 int PACKET_FANOUT_HASH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(void)
{
	int fds[3];
	uint16_t typeflags, first_group_id, second_group_id;

	FUNC2(stderr, "test: unique ids\n");

	fds[0] = FUNC4(PACKET_FANOUT_HASH |
				  PACKET_FANOUT_FLAG_UNIQUEID, 0);
	if (fds[0] == -1) {
		FUNC2(stderr, "ERROR: failed to create a unique id group.\n");
		FUNC1(1);
	}

	FUNC3(fds[0], &typeflags, &first_group_id);
	if (typeflags != PACKET_FANOUT_HASH) {
		FUNC2(stderr, "ERROR: unexpected typeflags %x\n", typeflags);
		FUNC1(1);
	}

	if (FUNC4(PACKET_FANOUT_CPU, first_group_id) != -1) {
		FUNC2(stderr, "ERROR: joined group with wrong type.\n");
		FUNC1(1);
	}

	fds[1] = FUNC4(PACKET_FANOUT_HASH, first_group_id);
	if (fds[1] == -1) {
		FUNC2(stderr,
			"ERROR: failed to join previously created group.\n");
		FUNC1(1);
	}

	fds[2] = FUNC4(PACKET_FANOUT_HASH |
				  PACKET_FANOUT_FLAG_UNIQUEID, 0);
	if (fds[2] == -1) {
		FUNC2(stderr,
			"ERROR: failed to create a second unique id group.\n");
		FUNC1(1);
	}

	FUNC3(fds[2], &typeflags, &second_group_id);
	if (FUNC4(PACKET_FANOUT_HASH | PACKET_FANOUT_FLAG_UNIQUEID,
			     second_group_id) != -1) {
		FUNC2(stderr,
			"ERROR: specified a group id when requesting unique id\n");
		FUNC1(1);
	}

	if (FUNC0(fds[0]) || FUNC0(fds[1]) || FUNC0(fds[2])) {
		FUNC2(stderr, "ERROR: closing sockets\n");
		FUNC1(1);
	}
}
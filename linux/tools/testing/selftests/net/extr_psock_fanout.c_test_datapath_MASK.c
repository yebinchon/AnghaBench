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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_CHAR_1 ; 
 scalar_t__ PACKET_FANOUT_CBPF ; 
 scalar_t__ PACKET_FANOUT_EBPF ; 
 scalar_t__ PORT_BASE ; 
 int RING_NUM_FRAMES ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (int*,char**,int const*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC13(uint16_t typeflags, int port_off,
			 const int expect1[], const int expect2[])
{
	const int expect0[] = { 0, 0 };
	char *rings[2];
	uint8_t type = typeflags & 0xFF;
	int fds[2], fds_udp[2][2], ret;

	FUNC2(stderr, "\ntest: datapath 0x%x ports %ld,%ld\n",
		typeflags, PORT_BASE, PORT_BASE + port_off);

	fds[0] = FUNC8(typeflags, 0);
	fds[1] = FUNC8(typeflags, 0);
	if (fds[0] == -1 || fds[1] == -1) {
		FUNC2(stderr, "ERROR: failed open\n");
		FUNC1(1);
	}
	if (type == PACKET_FANOUT_CBPF)
		FUNC11(fds[0]);
	else if (type == PACKET_FANOUT_EBPF)
		FUNC12(fds[0]);

	rings[0] = FUNC9(fds[0]);
	rings[1] = FUNC9(fds[1]);
	FUNC5(fds_udp[0], PORT_BASE);
	FUNC5(fds_udp[1], PORT_BASE + port_off);
	FUNC10(fds, rings, expect0);

	/* Send data, but not enough to overflow a queue */
	FUNC6(fds_udp[0], 15);
	FUNC7(fds_udp[1], 5, DATA_CHAR_1);
	ret = FUNC10(fds, rings, expect1);

	/* Send more data, overflow the queue */
	FUNC7(fds_udp[0], 15, DATA_CHAR_1);
	/* TODO: ensure consistent order between expect1 and expect2 */
	ret |= FUNC10(fds, rings, expect2);

	if (FUNC4(rings[1], RING_NUM_FRAMES * FUNC3()) ||
	    FUNC4(rings[0], RING_NUM_FRAMES * FUNC3())) {
		FUNC2(stderr, "close rings\n");
		FUNC1(1);
	}
	if (FUNC0(fds_udp[1][1]) || FUNC0(fds_udp[1][0]) ||
	    FUNC0(fds_udp[0][1]) || FUNC0(fds_udp[0][0]) ||
	    FUNC0(fds[1]) || FUNC0(fds[0])) {
		FUNC2(stderr, "close datapath\n");
		FUNC1(1);
	}

	return ret;
}
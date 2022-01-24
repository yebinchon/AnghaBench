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
 int PACKET_FANOUT_CBPF ; 
 int PACKET_FANOUT_CPU ; 
 int PACKET_FANOUT_EBPF ; 
 int PACKET_FANOUT_FLAG_ROLLOVER ; 
 int PACKET_FANOUT_FLAG_UNIQUEID ; 
 int PACKET_FANOUT_HASH ; 
 int PACKET_FANOUT_LB ; 
 int PACKET_FANOUT_ROLLOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,int,int const*,int const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char **argv)
{
	const int expect_hash[2][2]	= { { 15, 5 },  { 20, 5 } };
	const int expect_hash_rb[2][2]	= { { 15, 5 },  { 20, 15 } };
	const int expect_lb[2][2]	= { { 10, 10 }, { 18, 17 } };
	const int expect_rb[2][2]	= { { 15, 5 },  { 20, 15 } };
	const int expect_cpu0[2][2]	= { { 20, 0 },  { 20, 0 } };
	const int expect_cpu1[2][2]	= { { 0, 20 },  { 0, 20 } };
	const int expect_bpf[2][2]	= { { 15, 5 },  { 15, 20 } };
	const int expect_uniqueid[2][2] = { { 20, 20},  { 20, 20 } };
	int port_off = 2, tries = 20, ret;

	FUNC4();
	FUNC3();
	FUNC6();

	/* find a set of ports that do not collide onto the same socket */
	ret = FUNC5(PACKET_FANOUT_HASH, port_off,
			    expect_hash[0], expect_hash[1]);
	while (ret) {
		FUNC0(stderr, "info: trying alternate ports (%d)\n", tries);
		ret = FUNC5(PACKET_FANOUT_HASH, ++port_off,
				    expect_hash[0], expect_hash[1]);
		if (!--tries) {
			FUNC0(stderr, "too many collisions\n");
			return 1;
		}
	}

	ret |= FUNC5(PACKET_FANOUT_HASH | PACKET_FANOUT_FLAG_ROLLOVER,
			     port_off, expect_hash_rb[0], expect_hash_rb[1]);
	ret |= FUNC5(PACKET_FANOUT_LB,
			     port_off, expect_lb[0], expect_lb[1]);
	ret |= FUNC5(PACKET_FANOUT_ROLLOVER,
			     port_off, expect_rb[0], expect_rb[1]);

	ret |= FUNC5(PACKET_FANOUT_CBPF,
			     port_off, expect_bpf[0], expect_bpf[1]);
	ret |= FUNC5(PACKET_FANOUT_EBPF,
			     port_off, expect_bpf[0], expect_bpf[1]);

	FUNC2(0);
	ret |= FUNC5(PACKET_FANOUT_CPU, port_off,
			     expect_cpu0[0], expect_cpu0[1]);
	if (!FUNC2(1))
		/* TODO: test that choice alternates with previous */
		ret |= FUNC5(PACKET_FANOUT_CPU, port_off,
				     expect_cpu1[0], expect_cpu1[1]);

	ret |= FUNC5(PACKET_FANOUT_FLAG_UNIQUEID, port_off,
			     expect_uniqueid[0], expect_uniqueid[1]);

	if (ret)
		return 1;

	FUNC1("OK. All tests passed\n");
	return 0;
}
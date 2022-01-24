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
struct ethhdr {scalar_t__ h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(void *pay, size_t len)
{
	struct ethhdr *eth = pay;

	if (len < sizeof(struct ethhdr)) {
		FUNC1(stderr, "test_payload: packet too "
			"small: %d bytes!\n", len);
		FUNC0(1);
	}

	if (eth->h_proto != FUNC2(ETH_P_IP)) {
		FUNC1(stderr, "test_payload: wrong ethernet "
			"type: 0x%x!\n", FUNC3(eth->h_proto));
		FUNC0(1);
	}
}
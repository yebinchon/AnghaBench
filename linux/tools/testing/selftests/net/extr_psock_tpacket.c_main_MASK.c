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
 int /*<<< orphan*/  PACKET_RX_RING ; 
 int /*<<< orphan*/  PACKET_TX_RING ; 
 int /*<<< orphan*/  TPACKET_V1 ; 
 int /*<<< orphan*/  TPACKET_V2 ; 
 int /*<<< orphan*/  TPACKET_V3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	int ret = 0;

	ret |= FUNC1(TPACKET_V1, PACKET_RX_RING);
	ret |= FUNC1(TPACKET_V1, PACKET_TX_RING);

	ret |= FUNC1(TPACKET_V2, PACKET_RX_RING);
	ret |= FUNC1(TPACKET_V2, PACKET_TX_RING);

	ret |= FUNC1(TPACKET_V3, PACKET_RX_RING);
	ret |= FUNC1(TPACKET_V3, PACKET_TX_RING);

	if (ret)
		return 1;

	FUNC0("OK. All tests passed\n");
	return 0;
}
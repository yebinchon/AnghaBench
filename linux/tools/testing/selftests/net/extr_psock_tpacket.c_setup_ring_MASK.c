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
struct ring {int type; int version; int rd_len; int rd_num; int /*<<< orphan*/ * rd; int /*<<< orphan*/  req3; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int PACKET_TX_RING ; 
 int /*<<< orphan*/  SOL_PACKET ; 
#define  TPACKET_V1 130 
#define  TPACKET_V2 129 
#define  TPACKET_V3 128 
 int /*<<< orphan*/  FUNC0 (struct ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ring*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ total_bytes ; 
 scalar_t__ total_packets ; 

__attribute__((used)) static void FUNC7(int sock, struct ring *ring, int version, int type)
{
	int ret = 0;
	unsigned int blocks = 256;

	ring->type = type;
	ring->version = version;

	switch (version) {
	case TPACKET_V1:
	case TPACKET_V2:
		if (type == PACKET_TX_RING)
			FUNC1(sock);
		FUNC0(ring, blocks);
		ret = FUNC6(sock, SOL_PACKET, type, &ring->req,
				 sizeof(ring->req));
		break;

	case TPACKET_V3:
		FUNC2(ring, blocks, type);
		ret = FUNC6(sock, SOL_PACKET, type, &ring->req3,
				 sizeof(ring->req3));
		break;
	}

	if (ret == -1) {
		FUNC5("setsockopt");
		FUNC3(1);
	}

	ring->rd_len = ring->rd_num * sizeof(*ring->rd);
	ring->rd = FUNC4(ring->rd_len);
	if (ring->rd == NULL) {
		FUNC5("malloc");
		FUNC3(1);
	}

	total_packets = 0;
	total_bytes = 0;
}
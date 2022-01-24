#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union frame_map {scalar_t__ raw; TYPE_5__* v2; TYPE_3__* v1; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ring {scalar_t__ type; int version; unsigned int rd_num; TYPE_1__* rd; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_9__ {int tp_snaplen; int /*<<< orphan*/  tp_mac; } ;
struct TYPE_10__ {TYPE_4__ tp_h; } ;
struct TYPE_7__ {int tp_snaplen; int /*<<< orphan*/  tp_mac; } ;
struct TYPE_8__ {TYPE_2__ tp_h; } ;
struct TYPE_6__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int NUM_PACKETS ; 
 scalar_t__ PACKET_RX_RING ; 
 int POLLERR ; 
 int POLLIN ; 
 int /*<<< orphan*/  PORT_BASE ; 
#define  TPACKET_V1 129 
#define  TPACKET_V2 128 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int total_bytes ; 
 int total_packets ; 

__attribute__((used)) static void FUNC12(int sock, struct ring *ring)
{
	struct pollfd pfd;
	int udp_sock[2];
	union frame_map ppd;
	unsigned int frame_num = 0;

	FUNC2(ring->type != PACKET_RX_RING);

	FUNC7(udp_sock, PORT_BASE);

	FUNC5(&pfd, 0, sizeof(pfd));
	pfd.fd = sock;
	pfd.events = POLLIN | POLLERR;
	pfd.revents = 0;

	FUNC8(udp_sock, NUM_PACKETS);

	while (total_packets < NUM_PACKETS * 2) {
		while (FUNC0(ring->rd[frame_num].iov_base,
					       ring->version)) {
			ppd.raw = ring->rd[frame_num].iov_base;

			switch (ring->version) {
			case TPACKET_V1:
				FUNC11((uint8_t *) ppd.raw + ppd.v1->tp_h.tp_mac,
					     ppd.v1->tp_h.tp_snaplen);
				total_bytes += ppd.v1->tp_h.tp_snaplen;
				break;

			case TPACKET_V2:
				FUNC11((uint8_t *) ppd.raw + ppd.v2->tp_h.tp_mac,
					     ppd.v2->tp_h.tp_snaplen);
				total_bytes += ppd.v2->tp_h.tp_snaplen;
				break;
			}

			FUNC10();
			total_packets++;

			FUNC1(ppd.raw, ring->version);

			frame_num = (frame_num + 1) % ring->rd_num;
		}

		FUNC9(&pfd, 1, 1);
	}

	FUNC6(udp_sock);

	if (total_packets != 2 * NUM_PACKETS) {
		FUNC4(stderr, "walk_v%d_rx: received %u out of %u pkts\n",
			ring->version, total_packets, NUM_PACKETS);
		FUNC3(1);
	}

	FUNC4(stderr, " %u pkts (%u bytes)", NUM_PACKETS, total_bytes >> 1);
}
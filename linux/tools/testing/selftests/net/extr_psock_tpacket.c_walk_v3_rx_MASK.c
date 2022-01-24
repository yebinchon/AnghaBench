#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ring {scalar_t__ type; unsigned int rd_num; TYPE_1__* rd; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
struct TYPE_4__ {int block_status; } ;
struct block_desc {TYPE_2__ h1; } ;
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_3__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int NUM_PACKETS ; 
 scalar_t__ PACKET_RX_RING ; 
 int POLLERR ; 
 int POLLIN ; 
 int /*<<< orphan*/  PORT_BASE ; 
 int TP_STATUS_USER ; 
 int /*<<< orphan*/  FUNC0 (struct block_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int total_bytes ; 
 int total_packets ; 

__attribute__((used)) static void FUNC10(int sock, struct ring *ring)
{
	unsigned int block_num = 0;
	struct pollfd pfd;
	struct block_desc *pbd;
	int udp_sock[2];

	FUNC2(ring->type != PACKET_RX_RING);

	FUNC7(udp_sock, PORT_BASE);

	FUNC5(&pfd, 0, sizeof(pfd));
	pfd.fd = sock;
	pfd.events = POLLIN | POLLERR;
	pfd.revents = 0;

	FUNC8(udp_sock, NUM_PACKETS);

	while (total_packets < NUM_PACKETS * 2) {
		pbd = (struct block_desc *) ring->rd[block_num].iov_base;

		while ((pbd->h1.block_status & TP_STATUS_USER) == 0)
			FUNC9(&pfd, 1, 1);

		FUNC1(pbd, block_num);
		FUNC0(pbd);

		block_num = (block_num + 1) % ring->rd_num;
	}

	FUNC6(udp_sock);

	if (total_packets != 2 * NUM_PACKETS) {
		FUNC4(stderr, "walk_v3_rx: received %u out of %u pkts\n",
			total_packets, NUM_PACKETS);
		FUNC3(1);
	}

	FUNC4(stderr, " %u pkts (%u bytes)", NUM_PACKETS, total_bytes >> 1);
}
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
union frame_map {TYPE_5__* v2; void* raw; TYPE_3__* v1; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct tpacket3_hdr {size_t tp_snaplen; size_t tp_len; int /*<<< orphan*/  tp_next_offset; } ;
struct sockaddr_ll {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_halen; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int tp_frame_nr; } ;
struct ring {int version; int rd_num; scalar_t__ type; TYPE_1__ req3; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
typedef  int /*<<< orphan*/  pfd ;
typedef  int /*<<< orphan*/  packet ;
typedef  int /*<<< orphan*/  ll ;
struct TYPE_9__ {size_t tp_snaplen; size_t tp_len; } ;
struct TYPE_10__ {TYPE_4__ tp_h; } ;
struct TYPE_7__ {size_t tp_snaplen; size_t tp_len; } ;
struct TYPE_8__ {TYPE_2__ tp_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 int NUM_PACKETS ; 
 scalar_t__ PACKET_TX_RING ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int POLLERR ; 
 int POLLOUT ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  TPACKET2_HDRLEN ; 
 int /*<<< orphan*/  TPACKET3_HDRLEN ; 
 int /*<<< orphan*/  TPACKET_HDRLEN ; 
#define  TPACKET_V1 130 
#define  TPACKET_V2 129 
#define  TPACKET_V3 128 
 scalar_t__ FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,unsigned int,...) ; 
 void* FUNC8 (struct ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct pollfd*,int,int) ; 
 int FUNC16 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 
 size_t total_bytes ; 
 int total_packets ; 

__attribute__((used)) static void FUNC21(int sock, struct ring *ring)
{
	struct pollfd pfd;
	int rcv_sock, ret;
	size_t packet_len;
	union frame_map ppd;
	char packet[1024];
	unsigned int frame_num = 0, got = 0;
	struct sockaddr_ll ll = {
		.sll_family = PF_PACKET,
		.sll_halen = ETH_ALEN,
	};
	int nframes;

	/* TPACKET_V{1,2} sets up the ring->rd* related variables based
	 * on frames (e.g., rd_num is tp_frame_nr) whereas V3 sets these
	 * up based on blocks (e.g, rd_num is  tp_block_nr)
	 */
	if (ring->version <= TPACKET_V2)
		nframes = ring->rd_num;
	else
		nframes = ring->req3.tp_frame_nr;

	FUNC3(ring->type != PACKET_TX_RING);
	FUNC3(nframes < NUM_PACKETS);

	rcv_sock = FUNC18(PF_PACKET, SOCK_RAW, FUNC9(ETH_P_ALL));
	if (rcv_sock == -1) {
		FUNC14("socket");
		FUNC6(1);
	}

	FUNC13(rcv_sock);

	ll.sll_ifindex = FUNC10("lo");
	ret = FUNC2(rcv_sock, (struct sockaddr *) &ll, sizeof(ll));
	if (ret == -1) {
		FUNC14("bind");
		FUNC6(1);
	}

	FUNC12(&pfd, 0, sizeof(pfd));
	pfd.fd = sock;
	pfd.events = POLLOUT | POLLERR;
	pfd.revents = 0;

	total_packets = NUM_PACKETS;
	FUNC5(packet, &packet_len);

	while (total_packets > 0) {
		void *next = FUNC8(ring, frame_num);

		while (FUNC0(next, ring->version) &&
		       total_packets > 0) {
			ppd.raw = next;

			switch (ring->version) {
			case TPACKET_V1:
				ppd.v1->tp_h.tp_snaplen = packet_len;
				ppd.v1->tp_h.tp_len = packet_len;

				FUNC11(*((uint8_t *) ppd.raw + TPACKET_HDRLEN -
				       sizeof(struct sockaddr_ll)), packet,
				       packet_len);
				total_bytes += ppd.v1->tp_h.tp_snaplen;
				break;

			case TPACKET_V2:
				ppd.v2->tp_h.tp_snaplen = packet_len;
				ppd.v2->tp_h.tp_len = packet_len;

				FUNC11(*((uint8_t *) ppd.raw + TPACKET2_HDRLEN -
				       sizeof(struct sockaddr_ll)), packet,
				       packet_len);
				total_bytes += ppd.v2->tp_h.tp_snaplen;
				break;
			case TPACKET_V3: {
				struct tpacket3_hdr *tx = next;

				tx->tp_snaplen = packet_len;
				tx->tp_len = packet_len;
				tx->tp_next_offset = 0;

				FUNC11(*((uint8_t *)tx + TPACKET3_HDRLEN -
				       sizeof(struct sockaddr_ll)), packet,
				       packet_len);
				total_bytes += tx->tp_snaplen;
				break;
			}
			}

			FUNC19();
			total_packets--;

			FUNC1(next, ring->version);

			frame_num = (frame_num + 1) % nframes;
		}

		FUNC15(&pfd, 1, 1);
	}

	FUNC3(total_packets != 0);

	ret = FUNC17(sock, NULL, 0, 0, NULL, 0);
	if (ret == -1) {
		FUNC14("sendto");
		FUNC6(1);
	}

	while ((ret = FUNC16(rcv_sock, packet, sizeof(packet),
			       0, NULL, NULL)) > 0 &&
	       total_packets < NUM_PACKETS) {
		got += ret;
		FUNC20(packet, ret);

		FUNC19();
		total_packets++;
	}

	FUNC4(rcv_sock);

	if (total_packets != NUM_PACKETS) {
		FUNC7(stderr, "walk_v%d_rx: received %u out of %u pkts\n",
			ring->version, total_packets, NUM_PACKETS);
		FUNC6(1);
	}

	FUNC7(stderr, " %u pkts (%u bytes)", NUM_PACKETS, got);
}
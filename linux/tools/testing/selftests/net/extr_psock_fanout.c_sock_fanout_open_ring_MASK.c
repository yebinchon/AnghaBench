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
typedef  int /*<<< orphan*/  val ;
struct tpacket_req {int tp_block_size; int tp_frame_size; int tp_block_nr; int tp_frame_nr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PACKET_RX_RING ; 
 int /*<<< orphan*/  PACKET_VERSION ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int RING_NUM_FRAMES ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 int TPACKET_V2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static char *FUNC5(int fd)
{
	struct tpacket_req req = {
		.tp_block_size = FUNC1(),
		.tp_frame_size = FUNC1(),
		.tp_block_nr   = RING_NUM_FRAMES,
		.tp_frame_nr   = RING_NUM_FRAMES,
	};
	char *ring;
	int val = TPACKET_V2;

	if (FUNC4(fd, SOL_PACKET, PACKET_VERSION, (void *) &val,
		       sizeof(val))) {
		FUNC3("packetsock ring setsockopt version");
		FUNC0(1);
	}
	if (FUNC4(fd, SOL_PACKET, PACKET_RX_RING, (void *) &req,
		       sizeof(req))) {
		FUNC3("packetsock ring setsockopt");
		FUNC0(1);
	}

	ring = FUNC2(0, req.tp_block_size * req.tp_block_nr,
		    PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
	if (ring == MAP_FAILED) {
		FUNC3("packetsock ring mmap");
		FUNC0(1);
	}

	return ring;
}
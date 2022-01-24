#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct xsk_socket_info {unsigned int outstanding_tx; int /*<<< orphan*/  tx; } ;
typedef  int /*<<< orphan*/  pkt_data ;
struct TYPE_2__ {unsigned int addr; int len; } ;

/* Variables and functions */
 unsigned int BATCH_SIZE ; 
 unsigned int NUM_FRAMES ; 
 unsigned int XSK_UMEM__DEFAULT_FRAME_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct xsk_socket_info*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct xsk_socket_info *xsk, u32 frame_nb)
{
	u32 idx;

	if (FUNC1(&xsk->tx, BATCH_SIZE, &idx) == BATCH_SIZE) {
		unsigned int i;

		for (i = 0; i < BATCH_SIZE; i++) {
			FUNC3(&xsk->tx, idx + i)->addr	=
				(frame_nb + i) << XSK_UMEM__DEFAULT_FRAME_SHIFT;
			FUNC3(&xsk->tx, idx + i)->len =
				sizeof(pkt_data) - 1;
		}

		FUNC2(&xsk->tx, BATCH_SIZE);
		xsk->outstanding_tx += BATCH_SIZE;
		frame_nb += BATCH_SIZE;
		frame_nb %= NUM_FRAMES;
	}

	FUNC0(xsk);
}
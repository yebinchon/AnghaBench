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
typedef  int /*<<< orphan*/  u32 ;
struct xsk_socket_info {unsigned int tx_npkts; scalar_t__ outstanding_tx; TYPE_1__* umem; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xsk_socket_info*) ; 
 int /*<<< orphan*/  opt_need_wakeup ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct xsk_socket_info *xsk)
{
	unsigned int rcvd;
	u32 idx;

	if (!xsk->outstanding_tx)
		return;

	if (!opt_need_wakeup || FUNC3(&xsk->tx))
		FUNC0(xsk);

	rcvd = FUNC1(&xsk->umem->cq, BATCH_SIZE, &idx);
	if (rcvd > 0) {
		FUNC2(&xsk->umem->cq, rcvd);
		xsk->outstanding_tx -= rcvd;
		xsk->tx_npkts += rcvd;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct xsk_socket_info {unsigned int rx_npkts; unsigned int outstanding_tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; TYPE_1__* umem; } ;
struct pollfd {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  fq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xsk_socket_info*,struct pollfd*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xsk_socket_info*) ; 
 int /*<<< orphan*/  num_socks ; 
 int /*<<< orphan*/  opt_timeout ; 
 int FUNC4 (struct pollfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct xsk_socket_info *xsk, struct pollfd *fds)
{
	unsigned int rcvd, i;
	u32 idx_rx = 0, idx_tx = 0;
	int ret;

	FUNC0(xsk, fds);

	rcvd = FUNC6(&xsk->rx, BATCH_SIZE, &idx_rx);
	if (!rcvd) {
		if (FUNC9(&xsk->umem->fq))
			ret = FUNC4(fds, num_socks, opt_timeout);
		return;
	}

	ret = FUNC10(&xsk->tx, rcvd, &idx_tx);
	while (ret != rcvd) {
		if (ret < 0)
			FUNC1(-ret);
		if (FUNC9(&xsk->tx))
			FUNC3(xsk);
		ret = FUNC10(&xsk->tx, rcvd, &idx_tx);
	}

	for (i = 0; i < rcvd; i++) {
		u64 addr = FUNC8(&xsk->rx, idx_rx)->addr;
		u32 len = FUNC8(&xsk->rx, idx_rx++)->len;
		u64 orig = addr;

		addr = FUNC13(addr);
		char *pkt = FUNC14(xsk->umem->buffer, addr);

		FUNC5(pkt);

		FUNC2(pkt, len, addr);
		FUNC12(&xsk->tx, idx_tx)->addr = orig;
		FUNC12(&xsk->tx, idx_tx++)->len = len;
	}

	FUNC11(&xsk->tx, rcvd);
	FUNC7(&xsk->rx, rcvd);

	xsk->rx_npkts += rcvd;
	xsk->outstanding_tx += rcvd;
}
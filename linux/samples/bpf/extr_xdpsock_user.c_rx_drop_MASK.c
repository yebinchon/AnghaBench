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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct xsk_socket_info {unsigned int rx_npkts; int /*<<< orphan*/  rx; TYPE_1__* umem; } ;
struct pollfd {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  fq; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_socks ; 
 int /*<<< orphan*/  opt_timeout ; 
 int FUNC2 (struct pollfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct xsk_socket_info *xsk, struct pollfd *fds)
{
	unsigned int rcvd, i;
	u32 idx_rx = 0, idx_fq = 0;
	int ret;

	rcvd = FUNC3(&xsk->rx, BATCH_SIZE, &idx_rx);
	if (!rcvd) {
		if (FUNC7(&xsk->umem->fq))
			ret = FUNC2(fds, num_socks, opt_timeout);
		return;
	}

	ret = FUNC8(&xsk->umem->fq, rcvd, &idx_fq);
	while (ret != rcvd) {
		if (ret < 0)
			FUNC0(-ret);
		if (FUNC7(&xsk->umem->fq))
			ret = FUNC2(fds, num_socks, opt_timeout);
		ret = FUNC8(&xsk->umem->fq, rcvd, &idx_fq);
	}

	for (i = 0; i < rcvd; i++) {
		u64 addr = FUNC5(&xsk->rx, idx_rx)->addr;
		u32 len = FUNC5(&xsk->rx, idx_rx++)->len;
		u64 orig = FUNC11(addr);

		addr = FUNC10(addr);
		char *pkt = FUNC12(xsk->umem->buffer, addr);

		FUNC1(pkt, len, addr);
		*FUNC6(&xsk->umem->fq, idx_fq++) = orig;
	}

	FUNC9(&xsk->umem->fq, rcvd);
	FUNC4(&xsk->rx, rcvd);
	xsk->rx_npkts += rcvd;
}
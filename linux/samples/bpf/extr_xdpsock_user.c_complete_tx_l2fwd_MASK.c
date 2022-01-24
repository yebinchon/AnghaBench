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
typedef  scalar_t__ u32 ;
struct xsk_umem_info {int /*<<< orphan*/  cq; int /*<<< orphan*/  fq; } ;
struct xsk_socket_info {size_t outstanding_tx; unsigned int tx_npkts; struct xsk_umem_info* umem; int /*<<< orphan*/  tx; } ;
struct pollfd {int dummy; } ;

/* Variables and functions */
 size_t BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xsk_socket_info*) ; 
 int /*<<< orphan*/  num_socks ; 
 int /*<<< orphan*/  opt_need_wakeup ; 
 int /*<<< orphan*/  opt_timeout ; 
 int FUNC2 (struct pollfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static inline void FUNC10(struct xsk_socket_info *xsk,
				     struct pollfd *fds)
{
	struct xsk_umem_info *umem = xsk->umem;
	u32 idx_cq = 0, idx_fq = 0;
	unsigned int rcvd;
	size_t ndescs;

	if (!xsk->outstanding_tx)
		return;

	if (!opt_need_wakeup || FUNC7(&xsk->tx))
		FUNC1(xsk);

	ndescs = (xsk->outstanding_tx > BATCH_SIZE) ? BATCH_SIZE :
		xsk->outstanding_tx;

	/* re-add completed Tx buffers */
	rcvd = FUNC4(&umem->cq, ndescs, &idx_cq);
	if (rcvd > 0) {
		unsigned int i;
		int ret;

		ret = FUNC8(&umem->fq, rcvd, &idx_fq);
		while (ret != rcvd) {
			if (ret < 0)
				FUNC0(-ret);
			if (FUNC7(&umem->fq))
				ret = FUNC2(fds, num_socks, opt_timeout);
			ret = FUNC8(&umem->fq, rcvd, &idx_fq);
		}

		for (i = 0; i < rcvd; i++)
			*FUNC6(&umem->fq, idx_fq++) =
				*FUNC3(&umem->cq, idx_cq++);

		FUNC9(&xsk->umem->fq, rcvd);
		FUNC5(&xsk->umem->cq, rcvd);
		xsk->outstanding_tx -= rcvd;
		xsk->tx_npkts += rcvd;
	}
}
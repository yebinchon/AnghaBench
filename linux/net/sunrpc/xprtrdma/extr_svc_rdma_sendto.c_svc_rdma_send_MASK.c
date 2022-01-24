#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {int /*<<< orphan*/  sc_send_wait; TYPE_1__ sc_xprt; int /*<<< orphan*/  sc_qp; int /*<<< orphan*/  sc_sq_avail; } ;
struct ib_send_wr {int dummy; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_send_wr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  rdma_stat_sq_starve ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_send_wr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct svcxprt_rdma*) ; 
 int /*<<< orphan*/  FUNC11 (struct svcxprt_rdma*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct svcxprt_rdma *rdma, struct ib_send_wr *wr)
{
	int ret;

	FUNC4();

	/* If the SQ is full, wait until an SQ entry is available */
	while (1) {
		if ((FUNC0(&rdma->sc_sq_avail) < 0)) {
			FUNC1(&rdma_stat_sq_starve);
			FUNC10(rdma);
			FUNC1(&rdma->sc_sq_avail);
			FUNC12(rdma->sc_send_wait,
				   FUNC2(&rdma->sc_sq_avail) > 1);
			if (FUNC8(XPT_CLOSE, &rdma->sc_xprt.xpt_flags))
				return -ENOTCONN;
			FUNC11(rdma);
			continue;
		}

		FUNC6(&rdma->sc_xprt);
		ret = FUNC3(rdma->sc_qp, wr, NULL);
		FUNC9(wr, ret);
		if (ret) {
			FUNC5(XPT_CLOSE, &rdma->sc_xprt.xpt_flags);
			FUNC7(&rdma->sc_xprt);
			FUNC13(&rdma->sc_send_wait);
		}
		break;
	}
	return ret;
}
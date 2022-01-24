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
struct smc_link {int /*<<< orphan*/  wr_rx_tstamp; } ;
struct ib_wc {int status; TYPE_1__* qp; } ;
struct TYPE_2__ {struct smc_link* qp_context; } ;

/* Variables and functions */
#define  IB_WC_RETRY_EXC_ERR 130 
#define  IB_WC_RNR_RETRY_EXC_ERR 129 
 int IB_WC_SUCCESS ; 
#define  IB_WC_WR_FLUSH_ERR 128 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_link*) ; 

__attribute__((used)) static inline void FUNC4(struct ib_wc wc[], int num)
{
	struct smc_link *link;
	int i;

	for (i = 0; i < num; i++) {
		link = wc[i].qp->qp_context;
		if (wc[i].status == IB_WC_SUCCESS) {
			link->wr_rx_tstamp = jiffies;
			FUNC2(&wc[i]);
			FUNC3(link); /* refill WR RX */
		} else {
			/* handle status errors */
			switch (wc[i].status) {
			case IB_WC_RETRY_EXC_ERR:
			case IB_WC_RNR_RETRY_EXC_ERR:
			case IB_WC_WR_FLUSH_ERR:
				/* terminate connections of this link group
				 * abnormally
				 */
				FUNC1(FUNC0(link));
				break;
			default:
				FUNC3(link); /* refill WR RX */
				break;
			}
		}
	}
}
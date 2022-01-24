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
struct smc_ib_device {int initialized; int /*<<< orphan*/ * roce_cq_send; int /*<<< orphan*/ * roce_cq_recv; int /*<<< orphan*/  ibdev; } ;
struct ib_cq_init_attr {int cqe; int /*<<< orphan*/  comp_vector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_ORDER ; 
 int PAGE_SIZE ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int SMC_MAX_CQE ; 
 int FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct smc_ib_device*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_ib_device*) ; 
 int /*<<< orphan*/  smc_wr_rx_cq_handler ; 
 int /*<<< orphan*/  smc_wr_tx_cq_handler ; 

long FUNC6(struct smc_ib_device *smcibdev)
{
	struct ib_cq_init_attr cqattr =	{
		.cqe = SMC_MAX_CQE, .comp_vector = 0 };
	int cqe_size_order, smc_order;
	long rc;

	/* the calculated number of cq entries fits to mlx5 cq allocation */
	cqe_size_order = FUNC2() == 128 ? 7 : 6;
	smc_order = MAX_ORDER - cqe_size_order - 1;
	if (SMC_MAX_CQE + 2 > (0x00000001 << smc_order) * PAGE_SIZE)
		cqattr.cqe = (0x00000001 << smc_order) * PAGE_SIZE - 2;
	smcibdev->roce_cq_send = FUNC3(smcibdev->ibdev,
					      smc_wr_tx_cq_handler, NULL,
					      smcibdev, &cqattr);
	rc = FUNC1(smcibdev->roce_cq_send);
	if (FUNC0(smcibdev->roce_cq_send)) {
		smcibdev->roce_cq_send = NULL;
		return rc;
	}
	smcibdev->roce_cq_recv = FUNC3(smcibdev->ibdev,
					      smc_wr_rx_cq_handler, NULL,
					      smcibdev, &cqattr);
	rc = FUNC1(smcibdev->roce_cq_recv);
	if (FUNC0(smcibdev->roce_cq_recv)) {
		smcibdev->roce_cq_recv = NULL;
		goto err;
	}
	FUNC5(smcibdev);
	smcibdev->initialized = 1;
	return rc;

err:
	FUNC4(smcibdev->roce_cq_send);
	return rc;
}
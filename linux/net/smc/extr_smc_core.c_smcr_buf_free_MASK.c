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
struct smc_link_group {struct smc_link* lnk; } ;
struct smc_link {int /*<<< orphan*/  smcibdev; } ;
struct smc_buf_desc {int /*<<< orphan*/  order; scalar_t__ pages; int /*<<< orphan*/ * sgt; scalar_t__* mr_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_buf_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct smc_buf_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct smc_link_group *lgr, bool is_rmb,
			  struct smc_buf_desc *buf_desc)
{
	struct smc_link *lnk = &lgr->lnk[SMC_SINGLE_LINK];

	if (is_rmb) {
		if (buf_desc->mr_rx[SMC_SINGLE_LINK])
			FUNC4(
					buf_desc->mr_rx[SMC_SINGLE_LINK]);
		FUNC3(lnk->smcibdev, buf_desc,
				    DMA_FROM_DEVICE);
	} else {
		FUNC3(lnk->smcibdev, buf_desc,
				    DMA_TO_DEVICE);
	}
	FUNC2(&buf_desc->sgt[SMC_SINGLE_LINK]);
	if (buf_desc->pages)
		FUNC0(buf_desc->pages, buf_desc->order);
	FUNC1(buf_desc);
}
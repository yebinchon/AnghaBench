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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct smc_link {TYPE_1__* wr_rx_ibs; int /*<<< orphan*/  roce_qp; int /*<<< orphan*/  wr_rx_cnt; scalar_t__ wr_rx_id; } ;
struct TYPE_2__ {scalar_t__ wr_id; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct smc_link *link)
{
	int rc;
	u64 wr_id, temp_wr_id;
	u32 index;

	wr_id = ++link->wr_rx_id; /* tasklet context, thus not atomic */
	temp_wr_id = wr_id;
	index = FUNC0(temp_wr_id, link->wr_rx_cnt);
	link->wr_rx_ibs[index].wr_id = wr_id;
	rc = FUNC1(link->roce_qp, &link->wr_rx_ibs[index], NULL);
	return rc;
}
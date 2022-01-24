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
struct p9_trans_rdma {scalar_t__ cm_id; scalar_t__ cq; scalar_t__ pd; scalar_t__ qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_trans_rdma*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct p9_trans_rdma *rdma)
{
	if (!rdma)
		return;

	if (rdma->qp && !FUNC0(rdma->qp))
		FUNC2(rdma->qp);

	if (rdma->pd && !FUNC0(rdma->pd))
		FUNC1(rdma->pd);

	if (rdma->cq && !FUNC0(rdma->cq))
		FUNC3(rdma->cq);

	if (rdma->cm_id && !FUNC0(rdma->cm_id))
		FUNC5(rdma->cm_id);

	FUNC4(rdma);
}
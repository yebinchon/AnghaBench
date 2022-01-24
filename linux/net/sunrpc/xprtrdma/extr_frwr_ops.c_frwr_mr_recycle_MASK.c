#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rb_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  mrs_recycled; } ;
struct TYPE_8__ {TYPE_3__* ri_id; } ;
struct rpcrdma_xprt {TYPE_2__ rx_buf; TYPE_1__ rx_stats; TYPE_4__ rx_ia; } ;
struct rpcrdma_mr {scalar_t__ mr_dir; int /*<<< orphan*/  mr_all; int /*<<< orphan*/  mr_nents; int /*<<< orphan*/  mr_sg; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_mr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpcrdma_mr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_mr*) ; 

__attribute__((used)) static void FUNC7(struct rpcrdma_xprt *r_xprt, struct rpcrdma_mr *mr)
{
	FUNC5(mr);

	if (mr->mr_dir != DMA_NONE) {
		FUNC6(mr);
		FUNC1(r_xprt->rx_ia.ri_id->device,
				mr->mr_sg, mr->mr_nents, mr->mr_dir);
		mr->mr_dir = DMA_NONE;
	}

	FUNC3(&r_xprt->rx_buf.rb_lock);
	FUNC2(&mr->mr_all);
	r_xprt->rx_stats.mrs_recycled++;
	FUNC4(&r_xprt->rx_buf.rb_lock);

	FUNC0(mr);
}
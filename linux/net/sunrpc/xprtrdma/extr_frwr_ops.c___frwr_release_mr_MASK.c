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
struct rpcrdma_mr {int dummy; } ;
struct ib_wc {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_mr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_mr*) ; 

__attribute__((used)) static void FUNC2(struct ib_wc *wc, struct rpcrdma_mr *mr)
{
	if (wc->status != IB_WC_SUCCESS)
		FUNC1(mr);
	else
		FUNC0(mr);
}
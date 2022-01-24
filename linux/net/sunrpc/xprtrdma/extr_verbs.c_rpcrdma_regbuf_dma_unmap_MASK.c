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
struct rpcrdma_regbuf {int /*<<< orphan*/ * rg_device; int /*<<< orphan*/  rg_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_regbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcrdma_regbuf*) ; 

__attribute__((used)) static void FUNC4(struct rpcrdma_regbuf *rb)
{
	if (!rb)
		return;

	if (!FUNC3(rb))
		return;

	FUNC0(rb->rg_device, FUNC1(rb), FUNC2(rb),
			    rb->rg_direction);
	rb->rg_device = NULL;
}
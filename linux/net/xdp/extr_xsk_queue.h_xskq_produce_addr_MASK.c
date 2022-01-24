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
typedef  int /*<<< orphan*/  u64 ;
struct xsk_queue {size_t ring_mask; int /*<<< orphan*/  prod_tail; TYPE_1__* ring; } ;
struct xdp_umem_ring {int /*<<< orphan*/ * desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  producer; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct xsk_queue*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(struct xsk_queue *q, u64 addr)
{
	struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;

	if (FUNC2(q, q->prod_tail, 1) == 0)
		return -ENOSPC;

	/* A, matches D */
	ring->desc[q->prod_tail++ & q->ring_mask] = addr;

	/* Order producer and data */
	FUNC1(); /* B, matches C */

	FUNC0(q->ring->producer, q->prod_tail);
	return 0;
}
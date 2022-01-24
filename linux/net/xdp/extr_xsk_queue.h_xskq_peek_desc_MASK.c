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
struct xsk_queue {scalar_t__ cons_tail; scalar_t__ cons_head; TYPE_1__* ring; } ;
struct xdp_umem {int dummy; } ;
struct xdp_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct xsk_queue*,int /*<<< orphan*/ ) ; 
 struct xdp_desc* FUNC4 (struct xsk_queue*,struct xdp_desc*,struct xdp_umem*) ; 

__attribute__((used)) static inline struct xdp_desc *FUNC5(struct xsk_queue *q,
					      struct xdp_desc *desc,
					      struct xdp_umem *umem)
{
	if (q->cons_tail == q->cons_head) {
		FUNC1(); /* D, matches A */
		FUNC0(q->ring->consumer, q->cons_tail);
		q->cons_head = q->cons_tail + FUNC3(q, RX_BATCH_SIZE);

		/* Order consumer and data */
		FUNC2(); /* C, matches B */
	}

	return FUNC4(q, desc, umem);
}
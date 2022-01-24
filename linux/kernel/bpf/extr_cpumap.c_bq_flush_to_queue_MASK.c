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
struct xdp_frame {int dummy; } ;
struct xdp_bulk_queue {int count; int /*<<< orphan*/  flush_node; struct xdp_frame** q; struct bpf_cpu_map_entry* obj; } ;
struct ptr_ring {int /*<<< orphan*/  producer_lock; } ;
struct bpf_cpu_map_entry {int cpu; int /*<<< orphan*/  map_id; struct ptr_ring* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ptr_ring*,struct xdp_frame*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,int const) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC9(struct xdp_bulk_queue *bq, bool in_napi_ctx)
{
	struct bpf_cpu_map_entry *rcpu = bq->obj;
	unsigned int processed = 0, drops = 0;
	const int to_cpu = rcpu->cpu;
	struct ptr_ring *q;
	int i;

	if (FUNC6(!bq->count))
		return 0;

	q = rcpu->queue;
	FUNC3(&q->producer_lock);

	for (i = 0; i < bq->count; i++) {
		struct xdp_frame *xdpf = bq->q[i];
		int err;

		err = FUNC1(q, xdpf);
		if (err) {
			drops++;
			if (FUNC2(in_napi_ctx))
				FUNC8(xdpf);
			else
				FUNC7(xdpf);
		}
		processed++;
	}
	bq->count = 0;
	FUNC4(&q->producer_lock);

	FUNC0(&bq->flush_node);

	/* Feedback loop via tracepoints */
	FUNC5(rcpu->map_id, processed, drops, to_cpu);
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdp_frame {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  prev; } ;
struct xdp_bulk_queue {scalar_t__ count; TYPE_2__ flush_node; struct xdp_frame** q; } ;
struct list_head {int dummy; } ;
struct bpf_cpu_map_entry {int /*<<< orphan*/  bulkq; TYPE_1__* cmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  flush_list; } ;

/* Variables and functions */
 scalar_t__ CPU_MAP_BULK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xdp_bulk_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct list_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct bpf_cpu_map_entry *rcpu, struct xdp_frame *xdpf)
{
	struct list_head *flush_list = FUNC2(rcpu->cmap->flush_list);
	struct xdp_bulk_queue *bq = FUNC2(rcpu->bulkq);

	if (FUNC3(bq->count == CPU_MAP_BULK_SIZE))
		FUNC0(bq, true);

	/* Notice, xdp_buff/page MUST be queued here, long enough for
	 * driver to code invoking us to finished, due to driver
	 * (e.g. ixgbe) recycle tricks based on page-refcnt.
	 *
	 * Thus, incoming xdp_frame is always queued here (else we race
	 * with another CPU on page-refcnt and remaining driver code).
	 * Queue time is very short, as driver will invoke flush
	 * operation, when completing napi->poll call.
	 */
	bq->q[bq->count++] = xdpf;

	if (!bq->flush_node.prev)
		FUNC1(&bq->flush_node, flush_list);

	return 0;
}
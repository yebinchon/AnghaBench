#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  (* sk_data_ready ) (TYPE_5__*) ;} ;
struct xdp_sock {scalar_t__ dev; scalar_t__ queue_id; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_dropped; TYPE_5__ sk; int /*<<< orphan*/  rx; TYPE_2__* umem; } ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_meta; scalar_t__ data_end; TYPE_1__* rxq; } ;
struct TYPE_7__ {scalar_t__ headroom; scalar_t__ chunk_size_nohr; int /*<<< orphan*/  fq; } ;
struct TYPE_6__ {scalar_t__ dev; scalar_t__ queue_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__ XDP_PACKET_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 void* FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct xdp_sock *xs, struct xdp_buff *xdp)
{
	u32 metalen = xdp->data - xdp->data_meta;
	u32 len = xdp->data_end - xdp->data;
	u64 offset = xs->umem->headroom;
	void *buffer;
	u64 addr;
	int err;

	FUNC1(&xs->rx_lock);

	if (xs->dev != xdp->rxq->dev || xs->queue_id != xdp->rxq->queue_index) {
		err = -EINVAL;
		goto out_unlock;
	}

	if (!FUNC7(xs->umem->fq, &addr, xs->umem) ||
	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
		err = -ENOSPC;
		goto out_drop;
	}

	addr = FUNC5(xs->umem, addr, offset);
	buffer = FUNC4(xs->umem, addr);
	FUNC0(buffer, xdp->data_meta, len + metalen);

	addr = FUNC5(xs->umem, addr, metalen);
	err = FUNC8(xs->rx, addr, len);
	if (err)
		goto out_drop;

	FUNC6(xs->umem->fq);
	FUNC9(xs->rx);

	FUNC2(&xs->rx_lock);

	xs->sk.sk_data_ready(&xs->sk);
	return 0;

out_drop:
	xs->rx_dropped++;
out_unlock:
	FUNC2(&xs->rx_lock);
	return err;
}
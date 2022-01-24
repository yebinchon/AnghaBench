#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct xdp_sock {int /*<<< orphan*/  rx_dropped; TYPE_1__* umem; int /*<<< orphan*/  rx; } ;
struct xdp_buff {void* data_meta; void* data; } ;
struct TYPE_4__ {int chunk_size_nohr; int /*<<< orphan*/  fq; int /*<<< orphan*/  headroom; } ;

/* Variables and functions */
 int ENOSPC ; 
 int XDP_PACKET_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
{
	u64 offset = xs->umem->headroom;
	u64 addr, memcpy_addr;
	void *from_buf;
	u32 metalen;
	int err;

	if (!FUNC6(xs->umem->fq, &addr, xs->umem) ||
	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
		xs->rx_dropped++;
		return -ENOSPC;
	}

	if (FUNC1(FUNC2(xdp))) {
		from_buf = xdp->data;
		metalen = 0;
	} else {
		from_buf = xdp->data_meta;
		metalen = xdp->data - xdp->data_meta;
	}

	memcpy_addr = FUNC4(xs->umem, addr, offset);
	FUNC0(xs->umem, memcpy_addr, from_buf, len, metalen);

	offset += metalen;
	addr = FUNC4(xs->umem, addr, offset);
	err = FUNC7(xs->rx, addr, len);
	if (!err) {
		FUNC5(xs->umem->fq);
		FUNC3(xdp);
		return 0;
	}

	xs->rx_dropped++;
	return err;
}
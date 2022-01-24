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
typedef  int u64 ;
struct xsk_queue {unsigned int cons_tail; unsigned int cons_head; unsigned int ring_mask; int chunk_mask; scalar_t__ ring; } ;
struct xdp_umem_ring {int /*<<< orphan*/ * desc; } ;
struct xdp_umem {int flags; int /*<<< orphan*/  chunk_size_nohr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int XDP_UMEM_UNALIGNED_CHUNK_FLAG ; 
 scalar_t__ FUNC1 (struct xsk_queue*,int) ; 
 scalar_t__ FUNC2 (struct xsk_queue*,int,int /*<<< orphan*/ ,struct xdp_umem*) ; 

__attribute__((used)) static inline u64 *FUNC3(struct xsk_queue *q, u64 *addr,
				      struct xdp_umem *umem)
{
	while (q->cons_tail != q->cons_head) {
		struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;
		unsigned int idx = q->cons_tail & q->ring_mask;

		*addr = FUNC0(ring->desc[idx]) & q->chunk_mask;

		if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG) {
			if (FUNC2(q, *addr,
							 umem->chunk_size_nohr,
							 umem))
				return addr;
			goto out;
		}

		if (FUNC1(q, *addr))
			return addr;

out:
		q->cons_tail++;
	}

	return NULL;
}
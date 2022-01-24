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
typedef  void* u32 ;
struct xsk_queue {struct xdp_ring* ring; void* ring_mask; void* nentries; } ;
struct xdp_ring {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_COMP ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct xsk_queue*) ; 
 struct xsk_queue* FUNC3 (int,int) ; 
 size_t FUNC4 (struct xsk_queue*) ; 
 size_t FUNC5 (struct xsk_queue*) ; 

struct xsk_queue *FUNC6(u32 nentries, bool umem_queue)
{
	struct xsk_queue *q;
	gfp_t gfp_flags;
	size_t size;

	q = FUNC3(sizeof(*q), GFP_KERNEL);
	if (!q)
		return NULL;

	q->nentries = nentries;
	q->ring_mask = nentries - 1;

	gfp_flags = GFP_KERNEL | __GFP_ZERO | __GFP_NOWARN |
		    __GFP_COMP  | __GFP_NORETRY;
	size = umem_queue ? FUNC5(q) :
	       FUNC4(q);

	q->ring = (struct xdp_ring *)FUNC0(gfp_flags,
						      FUNC1(size));
	if (!q->ring) {
		FUNC2(q);
		return NULL;
	}

	return q;
}
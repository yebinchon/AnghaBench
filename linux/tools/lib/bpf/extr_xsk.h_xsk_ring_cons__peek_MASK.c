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
struct xsk_ring_cons {size_t cached_cons; } ;
typedef  size_t __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (struct xsk_ring_cons*,size_t) ; 

__attribute__((used)) static inline size_t FUNC2(struct xsk_ring_cons *cons,
					 size_t nb, __u32 *idx)
{
	size_t entries = FUNC1(cons, nb);

	if (entries > 0) {
		/* Make sure we do not speculatively read the data before
		 * we have received the packet buffers from the ring.
		 */
		FUNC0();

		*idx = cons->cached_cons;
		cons->cached_cons += entries;
	}

	return entries;
}
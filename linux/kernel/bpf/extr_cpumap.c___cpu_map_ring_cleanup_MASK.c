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
struct ptr_ring {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xdp_frame*) ; 
 struct xdp_frame* FUNC1 (struct ptr_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_frame*) ; 

__attribute__((used)) static void FUNC3(struct ptr_ring *ring)
{
	/* The tear-down procedure should have made sure that queue is
	 * empty.  See __cpu_map_entry_replace() and work-queue
	 * invoked cpu_map_kthread_stop(). Catch any broken behaviour
	 * gracefully and warn once.
	 */
	struct xdp_frame *xdpf;

	while ((xdpf = FUNC1(ring)))
		if (FUNC0(xdpf))
			FUNC2(xdpf);
}
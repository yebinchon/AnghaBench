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
typedef  scalar_t__ u32 ;
struct xsk_queue {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct xsk_queue*,struct xsk_queue*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct xsk_queue* FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(u32 entries, struct xsk_queue **queue,
			  bool umem_queue)
{
	struct xsk_queue *q;

	if (entries == 0 || *queue || !FUNC1(entries))
		return -EINVAL;

	q = FUNC3(entries, umem_queue);
	if (!q)
		return -ENOMEM;

	/* Make sure queue is ready before it can be seen by others */
	FUNC2();
	FUNC0(*queue, q);
	return 0;
}
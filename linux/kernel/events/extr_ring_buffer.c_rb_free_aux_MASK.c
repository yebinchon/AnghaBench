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
struct ring_buffer {int /*<<< orphan*/  aux_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ring_buffer *rb)
{
	if (FUNC1(&rb->aux_refcount))
		FUNC0(rb);
}
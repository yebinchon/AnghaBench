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
struct ring_buffer {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_FL_OVERWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ring_buffer *buffer, int val)
{
	FUNC0(&buffer->mutex);
	if (val)
		buffer->flags |= RB_FL_OVERWRITE;
	else
		buffer->flags &= ~RB_FL_OVERWRITE;
	FUNC1(&buffer->mutex);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer {TYPE_1__** buffers; } ;
struct TYPE_2__ {int /*<<< orphan*/  pages_touched; int /*<<< orphan*/  pages_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(struct ring_buffer *buffer, int cpu)
{
	size_t read;
	size_t cnt;

	read = FUNC1(&buffer->buffers[cpu]->pages_read);
	cnt = FUNC1(&buffer->buffers[cpu]->pages_touched);
	/* The reader can read an empty page, but not more than that */
	if (cnt < read) {
		FUNC0(read > cnt + 1);
		return 0;
	}

	return cnt - read;
}
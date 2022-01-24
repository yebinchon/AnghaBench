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
struct trace_iterator {int /*<<< orphan*/  idx; int /*<<< orphan*/  cpu; } ;
struct ring_buffer_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 
 struct ring_buffer_iter* FUNC1 (struct trace_iterator*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct trace_iterator *iter)
{
	struct ring_buffer_iter *buf_iter = FUNC1(iter, iter->cpu);

	iter->idx++;
	if (buf_iter)
		FUNC0(buf_iter, NULL);
}
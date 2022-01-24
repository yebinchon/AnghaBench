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
struct ring_buffer {int /*<<< orphan*/  poll; } ;
struct perf_event {int /*<<< orphan*/  mmap_mutex; struct ring_buffer* rb; int /*<<< orphan*/  waitq; } ;
struct file {struct perf_event* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, poll_table *wait)
{
	struct perf_event *event = file->private_data;
	struct ring_buffer *rb;
	__poll_t events = EPOLLHUP;

	FUNC4(file, &event->waitq, wait);

	if (FUNC1(event))
		return events;

	/*
	 * Pin the event->rb by taking event->mmap_mutex; otherwise
	 * perf_event_set_output() can swizzle our rb and make us miss wakeups.
	 */
	FUNC2(&event->mmap_mutex);
	rb = event->rb;
	if (rb)
		events = FUNC0(&rb->poll, 0);
	FUNC3(&event->mmap_mutex);
	return events;
}
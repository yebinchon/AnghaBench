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
struct perf_event_context {int dummy; } ;
struct perf_event {int dummy; } ;
struct file {struct perf_event* private_data; } ;

/* Variables and functions */
 long FUNC0 (struct perf_event*,unsigned int,unsigned long) ; 
 struct perf_event_context* FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct perf_event *event = file->private_data;
	struct perf_event_context *ctx;
	long ret;

	ctx = FUNC1(event);
	ret = FUNC0(event, cmd, arg);
	FUNC2(event, ctx);

	return ret;
}
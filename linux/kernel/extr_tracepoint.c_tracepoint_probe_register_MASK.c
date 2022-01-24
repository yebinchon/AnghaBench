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
struct tracepoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACEPOINT_DEFAULT_PRIO ; 
 int FUNC0 (struct tracepoint*,void*,void*,int /*<<< orphan*/ ) ; 

int FUNC1(struct tracepoint *tp, void *probe, void *data)
{
	return FUNC0(tp, probe, data, TRACEPOINT_DEFAULT_PRIO);
}
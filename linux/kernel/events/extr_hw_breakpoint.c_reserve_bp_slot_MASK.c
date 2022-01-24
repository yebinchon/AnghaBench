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
struct TYPE_2__ {int /*<<< orphan*/  bp_type; } ;
struct perf_event {TYPE_1__ attr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_bp_mutex ; 

int FUNC3(struct perf_event *bp)
{
	int ret;

	FUNC1(&nr_bp_mutex);

	ret = FUNC0(bp, bp->attr.bp_type);

	FUNC2(&nr_bp_mutex);

	return ret;
}
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
struct umh_info {scalar_t__ pid; int /*<<< orphan*/  pipe_from_umh; int /*<<< orphan*/  pipe_to_umh; } ;
struct TYPE_2__ {int stop; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_1__ bpfilter_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct umh_info *info)
{
	FUNC1(&bpfilter_ops.lock);
	bpfilter_ops.stop = true;
	FUNC0(info->pipe_to_umh);
	FUNC0(info->pipe_from_umh);
	info->pid = 0;
	FUNC2(&bpfilter_ops.lock);
}
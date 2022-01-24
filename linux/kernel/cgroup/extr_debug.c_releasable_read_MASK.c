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
typedef  int u64 ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC2(struct cgroup_subsys_state *css, struct cftype *cft)
{
	return (!FUNC0(css->cgroup) &&
		!FUNC1(&css->cgroup->self));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace {TYPE_2__* evlist; int /*<<< orphan*/  cgroup; } ;
struct option {struct trace* value; } ;
struct TYPE_3__ {int /*<<< orphan*/  entries; } ;
struct TYPE_4__ {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct option const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt, const char *str, int unset)
{
	struct trace *trace = opt->value;

	if (!FUNC1(&trace->evlist->core.entries))
		return FUNC2(opt, str, unset);

	trace->cgroup = FUNC0(trace->evlist, str);

	return 0;
}
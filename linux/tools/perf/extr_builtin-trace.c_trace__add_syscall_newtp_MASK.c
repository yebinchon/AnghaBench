#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct evsel* sys_exit; struct evsel* sys_enter; } ;
struct TYPE_10__ {TYPE_3__ events; } ;
struct trace {TYPE_4__ syscalls; int /*<<< orphan*/  kernel_syscallchains; int /*<<< orphan*/  opts; struct evlist* evlist; } ;
struct TYPE_7__ {int exclude_callchain_kernel; } ;
struct TYPE_8__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;
struct TYPE_11__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 TYPE_5__ callchain_param ; 
 int /*<<< orphan*/  FUNC0 (struct evlist*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (struct evsel*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC3 (struct evsel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct evsel*,int) ; 
 struct evsel* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace__sys_enter ; 
 int /*<<< orphan*/  trace__sys_exit ; 

__attribute__((used)) static int FUNC6(struct trace *trace)
{
	int ret = -1;
	struct evlist *evlist = trace->evlist;
	struct evsel *sys_enter, *sys_exit;

	sys_enter = FUNC5("sys_enter", trace__sys_enter);
	if (sys_enter == NULL)
		goto out;

	if (FUNC3(sys_enter, args))
		goto out_delete_sys_enter;

	sys_exit = FUNC5("sys_exit", trace__sys_exit);
	if (sys_exit == NULL)
		goto out_delete_sys_enter;

	if (FUNC4(sys_exit, ret))
		goto out_delete_sys_exit;

	FUNC2(sys_enter, &trace->opts, &callchain_param);
	FUNC2(sys_exit, &trace->opts, &callchain_param);

	FUNC0(evlist, sys_enter);
	FUNC0(evlist, sys_exit);

	if (callchain_param.enabled && !trace->kernel_syscallchains) {
		/*
		 * We're interested only in the user space callchain
		 * leading to the syscall, allow overriding that for
		 * debugging reasons using --kernel_syscall_callchains
		 */
		sys_exit->core.attr.exclude_callchain_kernel = 1;
	}

	trace->syscalls.events.sys_enter = sys_enter;
	trace->syscalls.events.sys_exit  = sys_exit;

	ret = 0;
out:
	return ret;

out_delete_sys_exit:
	FUNC1(sys_exit);
out_delete_sys_enter:
	FUNC1(sys_enter);
	goto out;
}
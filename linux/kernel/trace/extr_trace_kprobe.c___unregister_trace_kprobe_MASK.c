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
struct TYPE_4__ {int /*<<< orphan*/ * addr; scalar_t__ symbol_name; int /*<<< orphan*/  list; int /*<<< orphan*/  hlist; } ;
struct TYPE_3__ {TYPE_2__ kp; } ;
struct trace_kprobe {TYPE_1__ rp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct trace_kprobe*) ; 
 scalar_t__ FUNC3 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct trace_kprobe *tk)
{
	if (FUNC2(tk)) {
		if (FUNC3(tk))
			FUNC5(&tk->rp);
		else
			FUNC4(&tk->rp.kp);
		/* Cleanup kprobe for reuse and mark it unregistered */
		FUNC0(&tk->rp.kp.hlist);
		FUNC1(&tk->rp.kp.list);
		if (tk->rp.kp.symbol_name)
			tk->rp.kp.addr = NULL;
	}
}
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
struct TYPE_2__ {int /*<<< orphan*/  kp; } ;
struct trace_kprobe {TYPE_1__ rp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_kprobe*) ; 
 scalar_t__ FUNC3 (struct trace_kprobe*) ; 
 scalar_t__ FUNC4 (struct trace_kprobe*) ; 

__attribute__((used)) static inline int FUNC5(struct trace_kprobe *tk)
{
	int ret = 0;

	if (FUNC3(tk) && !FUNC2(tk)) {
		if (FUNC4(tk))
			ret = FUNC1(&tk->rp);
		else
			ret = FUNC0(&tk->rp.kp);
	}

	return ret;
}
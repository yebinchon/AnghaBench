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
struct trace_kprobe {int /*<<< orphan*/  nhit; struct trace_kprobe* symbol; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct trace_kprobe *tk)
{
	if (tk) {
		FUNC2(&tk->tp);
		FUNC1(tk->symbol);
		FUNC0(tk->nhit);
		FUNC1(tk);
	}
}
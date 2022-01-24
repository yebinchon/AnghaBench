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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  (* synth_probe_func_t ) (void*,int /*<<< orphan*/ *,unsigned int) ;
struct tracepoint_func {void* data; int /*<<< orphan*/  (* func ) (void*,int /*<<< orphan*/ *,unsigned int) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;
struct tracepoint {int /*<<< orphan*/  funcs; TYPE_1__ key; } ;
struct synth_event {struct tracepoint* tp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tracepoint_func* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct synth_event *event, u64 *var_ref_vals,
			       unsigned int var_ref_idx)
{
	struct tracepoint *tp = event->tp;

	if (FUNC4(FUNC0(&tp->key.enabled) > 0)) {
		struct tracepoint_func *probe_func_ptr;
		synth_probe_func_t probe_func;
		void *__data;

		if (!(FUNC1(FUNC2())))
			return;

		probe_func_ptr = FUNC3((tp)->funcs);
		if (probe_func_ptr) {
			do {
				probe_func = probe_func_ptr->func;
				__data = probe_func_ptr->data;
				probe_func(__data, var_ref_vals, var_ref_idx);
			} while ((++probe_func_ptr)->func);
		}
	}
}
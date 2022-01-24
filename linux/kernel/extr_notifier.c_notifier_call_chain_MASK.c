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
struct notifier_block {int (* notifier_call ) (struct notifier_block*,unsigned long,void*) ;struct notifier_block* next; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_STOP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct notifier_block*,unsigned long,void*)) ; 
 struct notifier_block* FUNC2 (struct notifier_block*) ; 
 int FUNC3 (struct notifier_block*,unsigned long,void*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct notifier_block **nl,
			       unsigned long val, void *v,
			       int nr_to_call, int *nr_calls)
{
	int ret = NOTIFY_DONE;
	struct notifier_block *nb, *next_nb;

	nb = FUNC2(*nl);

	while (nb && nr_to_call) {
		next_nb = FUNC2(nb->next);

#ifdef CONFIG_DEBUG_NOTIFIERS
		if (unlikely(!func_ptr_is_kernel_text(nb->notifier_call))) {
			WARN(1, "Invalid notifier called!");
			nb = next_nb;
			continue;
		}
#endif
		ret = nb->notifier_call(nb, val, v);

		if (nr_calls)
			(*nr_calls)++;

		if (ret & NOTIFY_STOP_MASK)
			break;
		nb = next_nb;
		nr_to_call--;
	}
	return ret;
}
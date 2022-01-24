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
struct raid6_recov_calls {scalar_t__ priority; int /*<<< orphan*/  name; int /*<<< orphan*/  datap; int /*<<< orphan*/  data2; scalar_t__ (* valid ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raid6_2data_recov ; 
 int /*<<< orphan*/  raid6_datap_recov ; 
 struct raid6_recov_calls** raid6_recov_algos ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static inline const struct raid6_recov_calls *FUNC3(void)
{
	const struct raid6_recov_calls *const *algo;
	const struct raid6_recov_calls *best;

	for (best = NULL, algo = raid6_recov_algos; *algo; algo++)
		if (!best || (*algo)->priority > best->priority)
			if (!(*algo)->valid || (*algo)->valid())
				best = *algo;

	if (best) {
		raid6_2data_recov = best->data2;
		raid6_datap_recov = best->datap;

		FUNC1("raid6: using %s recovery algorithm\n", best->name);
	} else
		FUNC0("raid6: Yikes! No recovery algorithm found!\n");

	return best;
}
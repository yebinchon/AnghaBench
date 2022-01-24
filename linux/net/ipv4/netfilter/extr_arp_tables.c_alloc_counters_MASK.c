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
struct xt_table_info {int number; } ;
struct xt_table {struct xt_table_info* private; } ;
struct xt_counters {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct xt_counters* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_table_info const*,struct xt_counters*) ; 
 struct xt_counters* FUNC2 (unsigned int) ; 

__attribute__((used)) static struct xt_counters *FUNC3(const struct xt_table *table)
{
	unsigned int countersize;
	struct xt_counters *counters;
	const struct xt_table_info *private = table->private;

	/* We need atomic snapshot of counters: rest doesn't change
	 * (other than comefrom, which userspace doesn't care
	 * about).
	 */
	countersize = sizeof(struct xt_counters) * private->number;
	counters = FUNC2(countersize);

	if (counters == NULL)
		return FUNC0(-ENOMEM);

	FUNC1(private, counters);

	return counters;
}
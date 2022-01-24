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
struct perf_sample {struct branch_stack* branch_stack; } ;
struct branch_stack {unsigned int nr; TYPE_1__* entries; } ;
struct branch_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  from; int /*<<< orphan*/  to; } ;
struct addr_location {int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  from; int /*<<< orphan*/  to; } ;

/* Variables and functions */
 struct branch_info* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct branch_info *FUNC2(struct perf_sample *sample,
					   struct addr_location *al)
{
	unsigned int i;
	const struct branch_stack *bs = sample->branch_stack;
	struct branch_info *bi = FUNC0(bs->nr, sizeof(struct branch_info));

	if (!bi)
		return NULL;

	for (i = 0; i < bs->nr; i++) {
		FUNC1(al->thread, &bi[i].to, bs->entries[i].to);
		FUNC1(al->thread, &bi[i].from, bs->entries[i].from);
		bi[i].flags = bs->entries[i].flags;
	}
	return bi;
}
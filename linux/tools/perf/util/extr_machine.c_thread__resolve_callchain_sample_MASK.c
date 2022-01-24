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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct thread {int dummy; } ;
struct symbol {int dummy; } ;
struct perf_sample {struct ip_callchain* callchain; struct branch_stack* branch_stack; } ;
struct iterations {int dummy; } ;
struct ip_callchain {int nr; scalar_t__* ips; } ;
struct evsel {int dummy; } ;
struct callchain_cursor {int dummy; } ;
struct branch_stack {int nr; struct branch_entry* entries; } ;
struct branch_entry {int from; scalar_t__ to; int /*<<< orphan*/  flags; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {scalar_t__ order; scalar_t__ branch_callstack; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ORDER_CALLEE ; 
 scalar_t__ PERF_CONTEXT_MAX ; 
 int PERF_MAX_BRANCH_DEPTH ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_USER ; 
 int FUNC0 (struct thread*,struct callchain_cursor*,struct symbol**,struct addr_location*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,struct iterations*,int) ; 
 int FUNC1 (struct thread*,struct ip_callchain*) ; 
 TYPE_1__ callchain_param ; 
 int FUNC2 (struct ip_callchain*,struct thread*,struct callchain_cursor*,struct symbol**,struct addr_location*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iterations*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct branch_entry*,int,struct iterations*) ; 
 int FUNC8 (struct thread*,struct callchain_cursor*,struct perf_sample*,struct symbol**,struct addr_location*,int) ; 

__attribute__((used)) static int FUNC9(struct thread *thread,
					    struct callchain_cursor *cursor,
					    struct evsel *evsel,
					    struct perf_sample *sample,
					    struct symbol **parent,
					    struct addr_location *root_al,
					    int max_stack)
{
	struct branch_stack *branch = sample->branch_stack;
	struct ip_callchain *chain = sample->callchain;
	int chain_nr = 0;
	u8 cpumode = PERF_RECORD_MISC_USER;
	int i, j, err, nr_entries;
	int skip_idx = -1;
	int first_call = 0;

	if (chain)
		chain_nr = chain->nr;

	if (FUNC5(evsel)) {
		err = FUNC8(thread, cursor, sample, parent,
						   root_al, max_stack);
		if (err)
			return (err < 0) ? err : 0;
	}

	/*
	 * Based on DWARF debug information, some architectures skip
	 * a callchain entry saved by the kernel.
	 */
	skip_idx = FUNC1(thread, chain);

	/*
	 * Add branches to call stack for easier browsing. This gives
	 * more context for a sample than just the callers.
	 *
	 * This uses individual histograms of paths compared to the
	 * aggregated histograms the normal LBR mode uses.
	 *
	 * Limitations for now:
	 * - No extra filters
	 * - No annotations (should annotate somehow)
	 */

	if (branch && callchain_param.branch_callstack) {
		int nr = FUNC4(max_stack, (int)branch->nr);
		struct branch_entry be[nr];
		struct iterations iter[nr];

		if (branch->nr > PERF_MAX_BRANCH_DEPTH) {
			FUNC6("corrupted branch chain. skipping...\n");
			goto check_calls;
		}

		for (i = 0; i < nr; i++) {
			if (callchain_param.order == ORDER_CALLEE) {
				be[i] = branch->entries[i];

				if (chain == NULL)
					continue;

				/*
				 * Check for overlap into the callchain.
				 * The return address is one off compared to
				 * the branch entry. To adjust for this
				 * assume the calling instruction is not longer
				 * than 8 bytes.
				 */
				if (i == skip_idx ||
				    chain->ips[first_call] >= PERF_CONTEXT_MAX)
					first_call++;
				else if (be[i].from < chain->ips[first_call] &&
				    be[i].from >= chain->ips[first_call] - 8)
					first_call++;
			} else
				be[i] = branch->entries[branch->nr - i - 1];
		}

		FUNC3(iter, 0, sizeof(struct iterations) * nr);
		nr = FUNC7(be, nr, iter);

		for (i = 0; i < nr; i++) {
			err = FUNC0(thread, cursor, parent,
					       root_al,
					       NULL, be[i].to,
					       true, &be[i].flags,
					       NULL, be[i].from);

			if (!err)
				err = FUNC0(thread, cursor, parent, root_al,
						       NULL, be[i].from,
						       true, &be[i].flags,
						       &iter[i], 0);
			if (err == -EINVAL)
				break;
			if (err)
				return err;
		}

		if (chain_nr == 0)
			return 0;

		chain_nr -= nr;
	}

check_calls:
	if (callchain_param.order != ORDER_CALLEE) {
		err = FUNC2(chain, thread, cursor, parent, root_al,
					&cpumode, chain->nr - first_call);
		if (err)
			return (err < 0) ? err : 0;
	}
	for (i = first_call, nr_entries = 0;
	     i < chain_nr && nr_entries < max_stack; i++) {
		u64 ip;

		if (callchain_param.order == ORDER_CALLEE)
			j = i;
		else
			j = chain->nr - i - 1;

#ifdef HAVE_SKIP_CALLCHAIN_IDX
		if (j == skip_idx)
			continue;
#endif
		ip = chain->ips[j];
		if (ip < PERF_CONTEXT_MAX)
                       ++nr_entries;
		else if (callchain_param.order != ORDER_CALLEE) {
			err = FUNC2(chain, thread, cursor, parent,
						root_al, &cpumode, j);
			if (err)
				return (err < 0) ? err : 0;
			continue;
		}

		err = FUNC0(thread, cursor, parent,
				       root_al, &cpumode, ip,
				       false, NULL, NULL, 0);

		if (err)
			return (err < 0) ? err : 0;
	}

	return 0;
}
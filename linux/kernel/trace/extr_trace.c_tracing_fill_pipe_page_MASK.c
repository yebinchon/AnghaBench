#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ seq; } ;
struct trace_iterator {int /*<<< orphan*/ * ent; TYPE_2__ seq; } ;

/* Variables and functions */
 int TRACE_TYPE_NO_CONSUME ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int FUNC0 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_iterator*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static size_t
FUNC5(size_t rem, struct trace_iterator *iter)
{
	size_t count;
	int save_len;
	int ret;

	/* Seq buffer is page-sized, exactly what we need. */
	for (;;) {
		save_len = iter->seq.seq.len;
		ret = FUNC0(iter);

		if (FUNC3(&iter->seq)) {
			iter->seq.seq.len = save_len;
			break;
		}

		/*
		 * This should not be hit, because it should only
		 * be set if the iter->seq overflowed. But check it
		 * anyway to be safe.
		 */
		if (ret == TRACE_TYPE_PARTIAL_LINE) {
			iter->seq.seq.len = save_len;
			break;
		}

		count = FUNC4(&iter->seq) - save_len;
		if (rem < count) {
			rem = 0;
			iter->seq.seq.len = save_len;
			break;
		}

		if (ret != TRACE_TYPE_NO_CONSUME)
			FUNC1(iter);
		rem -= count;
		if (!FUNC2(iter))	{
			rem = 0;
			iter->ent = NULL;
			break;
		}
	}

	return rem;
}
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
struct trace_iterator {int leftover; int /*<<< orphan*/  seq; TYPE_1__* trace; scalar_t__ snapshot; scalar_t__ tr; int /*<<< orphan*/ * ent; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* print_header ) (struct seq_file*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*) ; 
 scalar_t__ FUNC7 (struct trace_iterator*) ; 
 int FUNC8 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, void *v)
{
	struct trace_iterator *iter = v;
	int ret;

	if (iter->ent == NULL) {
		if (iter->tr) {
			FUNC2(m, "# tracer: %s\n", iter->trace->name);
			FUNC3(m, "#\n");
			FUNC5(m);
		}
		if (iter->snapshot && FUNC7(iter))
			FUNC0(m, iter);
		else if (iter->trace && iter->trace->print_header)
			iter->trace->print_header(m);
		else
			FUNC6(m);

	} else if (iter->leftover) {
		/*
		 * If we filled the seq_file buffer earlier, we
		 * want to just show it now.
		 */
		ret = FUNC8(m, &iter->seq);

		/* ret should this time be zero, but you never know */
		iter->leftover = ret;

	} else {
		FUNC1(iter);
		ret = FUNC8(m, &iter->seq);
		/*
		 * If we overflow the seq_file buffer, then it will
		 * ask us for this data again at start up.
		 * Use that instead.
		 *  ret is 0 if seq_file write succeeded.
		 *        -1 otherwise.
		 */
		iter->leftover = ret;
	}

	return 0;
}
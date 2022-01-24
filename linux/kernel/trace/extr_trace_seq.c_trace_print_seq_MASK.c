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
struct trace_seq {int /*<<< orphan*/  seq; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int FUNC1 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*) ; 

int FUNC3(struct seq_file *m, struct trace_seq *s)
{
	int ret;

	FUNC0(s);

	ret = FUNC1(m, &s->seq);

	/*
	 * Only reset this buffer if we successfully wrote to the
	 * seq_file buffer. This lets the caller try again or
	 * do something else with the contents.
	 */
	if (!ret)
		FUNC2(s);

	return ret;
}
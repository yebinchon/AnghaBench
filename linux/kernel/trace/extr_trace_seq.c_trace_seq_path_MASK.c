#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int len; } ;
struct trace_seq {int full; TYPE_1__ seq; } ;
struct path {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct path const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct trace_seq *s, const struct path *path)
{
	unsigned int save_len = s->seq.len;

	if (s->full)
		return 0;

	FUNC1(s);

	if (FUNC0(s) < 1) {
		s->full = 1;
		return 0;
	}

	FUNC3(&s->seq, path, "\n");

	if (FUNC4(FUNC2(&s->seq))) {
		s->seq.len = save_len;
		s->full = 1;
		return 0;
	}

	return 1;
}
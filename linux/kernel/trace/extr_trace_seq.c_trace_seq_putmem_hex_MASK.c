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

/* Variables and functions */
 unsigned int FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct trace_seq *s, const void *mem,
			 unsigned int len)
{
	unsigned int save_len = s->seq.len;

	if (s->full)
		return;

	FUNC1(s);

	/* Each byte is represented by two chars */
	if (len * 2 > FUNC0(s)) {
		s->full = 1;
		return;
	}

	/* The added spaces can still cause an overflow */
	FUNC3(&s->seq, mem, len);

	if (FUNC4(FUNC2(&s->seq))) {
		s->seq.len = save_len;
		s->full = 1;
		return;
	}
}
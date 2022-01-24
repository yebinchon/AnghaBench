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
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,unsigned long const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct trace_seq *s, const unsigned long *maskp,
		      int nmaskbits)
{
	unsigned int save_len = s->seq.len;

	if (s->full)
		return;

	FUNC0(s);

	FUNC2(&s->seq, "%*pb", nmaskbits, maskp);

	if (FUNC3(FUNC1(&s->seq))) {
		s->seq.len = save_len;
		s->full = 1;
	}
}
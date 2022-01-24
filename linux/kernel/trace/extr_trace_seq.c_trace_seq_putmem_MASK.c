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
struct trace_seq {int full; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,unsigned int) ; 

void FUNC3(struct trace_seq *s, const void *mem, unsigned int len)
{
	if (s->full)
		return;

	FUNC1(s);

	if (len > FUNC0(s)) {
		s->full = 1;
		return;
	}

	FUNC2(&s->seq, mem, len);
}
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
struct trace_seq {int len; int buffer_size; unsigned char* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 

int FUNC2(struct trace_seq *s, unsigned char c)
{
	FUNC0(s);

	while (s->len >= (s->buffer_size - 1))
		FUNC1(s);

	FUNC0(s);

	s->buffer[s->len++] = c;

	return 1;
}
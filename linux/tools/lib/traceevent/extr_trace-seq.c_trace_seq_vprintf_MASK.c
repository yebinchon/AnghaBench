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
typedef  int /*<<< orphan*/  va_list ;
struct trace_seq {int buffer_size; int len; scalar_t__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*) ; 
 int FUNC2 (scalar_t__,int,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct trace_seq *s, const char *fmt, va_list args)
{
	int len;
	int ret;

 try_again:
	FUNC0(s);

	len = (s->buffer_size - 1) - s->len;

	ret = FUNC2(s->buffer + s->len, len, fmt, args);

	if (ret >= len) {
		FUNC1(s);
		goto try_again;
	}

	if (ret > 0)
		s->len += ret;

	return ret;
}
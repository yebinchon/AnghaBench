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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char const*,int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *
FUNC4(struct trace_seq *p, const unsigned char *buf, int buf_len,
		    bool concatenate)
{
	int i;
	const char *ret = FUNC1(p);
	const char *fmt = concatenate ? "%*phN" : "%*ph";

	for (i = 0; i < buf_len; i += 16)
		FUNC2(p, fmt, FUNC0(buf_len - i, 16), &buf[i]);
	FUNC3(p, 0);

	return ret;
}
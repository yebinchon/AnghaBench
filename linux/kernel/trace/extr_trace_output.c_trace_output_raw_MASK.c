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
struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_seq seq; } ;

/* Variables and functions */
 int FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct trace_iterator *iter, char *name,
			    char *fmt, va_list ap)
{
	struct trace_seq *s = &iter->seq;

	FUNC1(s, "%s: ", name);
	FUNC2(s, fmt, ap);

	return FUNC0(s);
}
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
struct trace_print_flags {char* name; unsigned long mask; } ;

/* Variables and functions */
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char const*) ; 

const char *
FUNC4(struct trace_seq *p, const char *delim,
		      unsigned long flags,
		      const struct trace_print_flags *flag_array)
{
	unsigned long mask;
	const char *str;
	const char *ret = FUNC0(p);
	int i, first = 1;

	for (i = 0;  flag_array[i].name && flags; i++) {

		mask = flag_array[i].mask;
		if ((flags & mask) != mask)
			continue;

		str = flag_array[i].name;
		flags &= ~mask;
		if (!first && delim)
			FUNC3(p, delim);
		else
			first = 0;
		FUNC3(p, str);
	}

	/* check for left over flags */
	if (flags) {
		if (!first && delim)
			FUNC3(p, delim);
		FUNC1(p, "0x%lx", flags);
	}

	FUNC2(p, 0);

	return ret;
}
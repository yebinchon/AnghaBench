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
struct trace_print_flags {unsigned long mask; scalar_t__ name; } ;

/* Variables and functions */
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,scalar_t__) ; 

const char *
FUNC4(struct trace_seq *p, unsigned long val,
			const struct trace_print_flags *symbol_array)
{
	int i;
	const char *ret = FUNC0(p);

	for (i = 0;  symbol_array[i].name; i++) {

		if (val != symbol_array[i].mask)
			continue;

		FUNC3(p, symbol_array[i].name);
		break;
	}

	if (ret == (const char *)(FUNC0(p)))
		FUNC1(p, "0x%lx", val);

	FUNC2(p, 0);

	return ret;
}
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
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,void*,unsigned int) ; 
 char* FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *
FUNC3(struct trace_seq *p, void *bitmask_ptr,
			unsigned int bitmask_size)
{
	const char *ret = FUNC1(p);

	FUNC0(p, bitmask_ptr, bitmask_size * 8);
	FUNC2(p, 0);

	return ret;
}
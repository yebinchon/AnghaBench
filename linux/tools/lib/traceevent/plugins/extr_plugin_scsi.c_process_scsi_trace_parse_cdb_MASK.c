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
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,unsigned char*,unsigned long long) ; 

unsigned long long FUNC1(struct trace_seq *s,
						unsigned long long *args)
{
	FUNC0(s, (unsigned char *) (unsigned long) args[1], args[2]);
	return 0;
}
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
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,unsigned long long) ; 

__attribute__((used)) static unsigned long long
FUNC1(struct trace_seq *s, unsigned long long *args)
{
	unsigned long long jiffies = args[0];

	FUNC0(s, "%lld", jiffies);
	return jiffies;
}
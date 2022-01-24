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
struct trace_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 

__attribute__((used)) static void
FUNC3(struct trace_array *tr,
		 unsigned long ip, unsigned long parent_ip,
		 unsigned long flags, int pc)
{
	if (FUNC0(tr))
		FUNC2(tr, ip, parent_ip, flags, pc);
	else
		FUNC1(tr, ip, parent_ip, flags, pc);
}
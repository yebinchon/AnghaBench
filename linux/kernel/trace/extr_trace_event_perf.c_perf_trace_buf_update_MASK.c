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
typedef  int /*<<< orphan*/  u16 ;
struct trace_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct trace_entry*,int /*<<< orphan*/ ,unsigned long,int) ; 

void FUNC3(void *record, u16 type)
{
	struct trace_entry *entry = record;
	int pc = FUNC1();
	unsigned long flags;

	FUNC0(flags);
	FUNC2(entry, type, flags, pc);
}
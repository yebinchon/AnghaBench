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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  kdb_flags ; 
 scalar_t__ kdb_flags_index ; 
 int /*<<< orphan*/ * kdb_flags_stack ; 

void FUNC2(void)
{
	FUNC1(kdb_flags_index >= FUNC0(kdb_flags_stack));
	kdb_flags_stack[kdb_flags_index++] = kdb_flags;
}
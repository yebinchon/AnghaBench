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
 int TRACE_RECORD_CMDLINE ; 
 int TRACE_RECORD_TGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_record_taskinfo_disabled ; 
 int /*<<< orphan*/  trace_taskinfo_save ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(int flags)
{
	if (FUNC3(!(flags & (TRACE_RECORD_CMDLINE | TRACE_RECORD_TGID))))
		return true;
	if (FUNC1(&trace_record_taskinfo_disabled) || !FUNC2())
		return true;
	if (!FUNC0(trace_taskinfo_save))
		return true;
	return false;
}
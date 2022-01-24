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
struct perf_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*,int /*<<< orphan*/ ) ; 
 scalar_t__ alloc_flag ; 
 int /*<<< orphan*/  alloc_lines ; 
 scalar_t__ caller_flag ; 
 int /*<<< orphan*/  caller_lines ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct perf_session *session)
{
	if (caller_flag || alloc_flag)
		FUNC2();
	if (caller_flag)
		FUNC1(session, caller_lines);
	if (alloc_flag)
		FUNC0(session, alloc_lines);
	FUNC3();
}
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
struct trace_subsystem_dir {int ref_count; int /*<<< orphan*/  subsystem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_subsystem_dir*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct trace_subsystem_dir *dir)
{
	FUNC0(dir->ref_count == 0);
	/* If the subsystem is about to be freed, the dir must be too */
	FUNC0(FUNC3(dir->subsystem) == 1 && dir->ref_count != 1);

	FUNC1(dir->subsystem);
	if (!--dir->ref_count)
		FUNC2(dir);
}
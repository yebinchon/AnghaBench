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
struct trace_array {scalar_t__ dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int /*<<< orphan*/  ENODEV ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct trace_array global_trace ; 
 int /*<<< orphan*/  trace_automount ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct dentry *FUNC6(void)
{
	struct trace_array *tr = &global_trace;

	/* The top level trace array uses  NULL as parent */
	if (tr->dir)
		return NULL;

	if (FUNC2(!FUNC5()) ||
		(FUNC1(CONFIG_DEBUG_FS) &&
		 FUNC2(!FUNC4())))
		return FUNC0(-ENODEV);

	/*
	 * As there may still be users that expect the tracing
	 * files to exist in debugfs/tracing, we must automount
	 * the tracefs file system there, so older tools still
	 * work with the newer kerenl.
	 */
	tr->dir = FUNC3("tracing", NULL,
					   trace_automount, NULL);

	return NULL;
}
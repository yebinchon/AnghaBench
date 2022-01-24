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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stat_dir ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dentry*) ; 
 struct dentry* FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	struct dentry *d_tracing;

	d_tracing = FUNC3();
	if (FUNC0(d_tracing))
		return 0;

	stat_dir = FUNC2("trace_stat", d_tracing);
	if (!stat_dir)
		FUNC1("Could not create tracefs 'trace_stat' entry\n");
	return 0;
}
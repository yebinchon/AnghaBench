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
struct proc_dir_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct proc_dir_entry**,char const**) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *name, struct proc_dir_entry **ret,
			   const char **residual)
{
	int rv;

	FUNC1(&proc_subdir_lock);
	rv = FUNC0(name, ret, residual);
	FUNC2(&proc_subdir_lock);
	return rv;
}
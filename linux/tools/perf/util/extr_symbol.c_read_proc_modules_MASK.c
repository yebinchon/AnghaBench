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
struct rb_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __read_proc_modules ; 
 int /*<<< orphan*/  FUNC0 (struct rb_root*) ; 
 scalar_t__ FUNC1 (char const*,struct rb_root*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *filename, struct rb_root *modules)
{
	if (FUNC2(filename, "/proc/modules"))
		return -1;

	if (FUNC1(filename, modules, __read_proc_modules)) {
		FUNC0(modules);
		return -1;
	}

	return 0;
}
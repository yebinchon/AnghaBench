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
struct trace {int /*<<< orphan*/ * output; } ;
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  oldname ;

/* Variables and functions */
 int PATH_MAX ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct trace *trace, const char *filename)
{
	struct stat st;

	if (!FUNC3(filename, &st) && st.st_size) {
		char oldname[PATH_MAX];

		FUNC2(oldname, sizeof(oldname), "%s.old", filename);
		FUNC4(oldname);
		FUNC1(filename, oldname);
	}

	trace->output = FUNC0(filename, "w");

	return trace->output == NULL ? -errno : 0;
}
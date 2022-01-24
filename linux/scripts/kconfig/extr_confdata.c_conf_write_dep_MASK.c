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
struct file {char* name; struct file* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct file* file_list ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *name)
{
	struct file *file;
	FILE *out;

	out = FUNC3("..config.tmp", "w");
	if (!out)
		return 1;
	FUNC4(out, "deps_config := \\\n");
	for (file = file_list; file; file = file->next) {
		if (file->next)
			FUNC4(out, "\t%s \\\n", file->name);
		else
			FUNC4(out, "\t%s\n", file->name);
	}
	FUNC4(out, "\n%s: \\\n"
		     "\t$(deps_config)\n\n", FUNC0());

	FUNC1(out, FUNC0());

	FUNC4(out, "\n$(deps_config): ;\n");
	FUNC2(out);

	if (FUNC5(name))
		return 1;
	FUNC6("..config.tmp", name);
	return 0;
}
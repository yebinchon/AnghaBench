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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	const char **fmt = v;
	const char *str = *fmt;
	int i;

	if (!*fmt)
		return 0;

	FUNC0(m, "0x%lx : \"", *(unsigned long *)fmt);

	/*
	 * Tabs and new lines need to be converted.
	 */
	for (i = 0; str[i]; i++) {
		switch (str[i]) {
		case '\n':
			FUNC2(m, "\\n");
			break;
		case '\t':
			FUNC2(m, "\\t");
			break;
		case '\\':
			FUNC1(m, '\\');
			break;
		case '"':
			FUNC2(m, "\\\"");
			break;
		default:
			FUNC1(m, str[i]);
		}
	}
	FUNC2(m, "\"\n");

	return 0;
}
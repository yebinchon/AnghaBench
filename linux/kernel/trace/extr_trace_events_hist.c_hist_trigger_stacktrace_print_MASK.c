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
 int KSYM_SYMBOL_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m,
					  unsigned long *stacktrace_entries,
					  unsigned int max_entries)
{
	char str[KSYM_SYMBOL_LEN];
	unsigned int spaces = 8;
	unsigned int i;

	for (i = 0; i < max_entries; i++) {
		if (!stacktrace_entries[i])
			return;

		FUNC0(m, "%*c", 1 + spaces, ' ');
		FUNC1(str, stacktrace_entries[i]);
		FUNC0(m, "%s\n", str);
	}
}
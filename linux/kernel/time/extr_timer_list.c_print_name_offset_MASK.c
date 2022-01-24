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
 int KSYM_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*) ; 
 scalar_t__ FUNC1 (unsigned long,char*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, void *sym)
{
	char symname[KSYM_NAME_LEN];

	if (FUNC1((unsigned long)sym, symname) < 0)
		FUNC0(m, "<%pK>", sym);
	else
		FUNC0(m, "%s", symname);
}
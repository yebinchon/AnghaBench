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
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	int cpu = (unsigned long)(v - 2);

	if (cpu != -1)
		FUNC0(m, cpu);
	else
		FUNC1(m);

	return 0;
}
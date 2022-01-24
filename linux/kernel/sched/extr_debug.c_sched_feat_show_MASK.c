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
 int __SCHED_FEAT_NR ; 
 int /*<<< orphan*/ * sched_feat_names ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 unsigned long sysctl_sched_features ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	int i;

	for (i = 0; i < __SCHED_FEAT_NR; i++) {
		if (!(sysctl_sched_features & (1UL << i)))
			FUNC1(m, "NO_");
		FUNC0(m, "%s ", sched_feat_names[i]);
	}
	FUNC1(m, "\n");

	return 0;
}
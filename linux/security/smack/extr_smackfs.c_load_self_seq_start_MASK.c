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
struct task_smack {int /*<<< orphan*/  smk_rules; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct task_smack* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct seq_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *s, loff_t *pos)
{
	struct task_smack *tsp = FUNC1(FUNC0());

	return FUNC2(s, pos, &tsp->smk_rules);
}
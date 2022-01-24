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
struct task_struct {int /*<<< orphan*/  cpus_ptr; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct task_struct *task)
{
	FUNC1(m, "Cpus_allowed:\t%*pb\n",
		   FUNC0(task->cpus_ptr));
	FUNC1(m, "Cpus_allowed_list:\t%*pbl\n",
		   FUNC0(task->cpus_ptr));
}
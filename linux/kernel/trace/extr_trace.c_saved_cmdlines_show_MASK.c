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
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	char buf[TASK_COMM_LEN];
	unsigned int *pid = v;

	FUNC0(*pid, buf);
	FUNC1(m, "%d %s\n", *pid, buf);
	return 0;
}
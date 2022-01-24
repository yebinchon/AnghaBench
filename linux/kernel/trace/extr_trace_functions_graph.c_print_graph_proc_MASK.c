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
struct trace_seq {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 int TRACE_GRAPH_PROCINFO_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char) ; 

__attribute__((used)) static void FUNC5(struct trace_seq *s, pid_t pid)
{
	char comm[TASK_COMM_LEN];
	/* sign + log10(MAX_INT) + '\0' */
	char pid_str[11];
	int spaces = 0;
	int len;
	int i;

	FUNC2(pid, comm);
	comm[7] = '\0';
	FUNC0(pid_str, "%d", pid);

	/* 1 stands for the "-" character */
	len = FUNC1(comm) + FUNC1(pid_str) + 1;

	if (len < TRACE_GRAPH_PROCINFO_LENGTH)
		spaces = TRACE_GRAPH_PROCINFO_LENGTH - len;

	/* First spaces to align center */
	for (i = 0; i < spaces / 2; i++)
		FUNC4(s, ' ');

	FUNC3(s, "%s-%s", comm, pid_str);

	/* Last spaces to align center */
	for (i = 0; i < spaces - (spaces / 2); i++)
		FUNC4(s, ' ');
}
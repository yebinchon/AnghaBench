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
struct task_cputime_atomic {int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;
struct task_cputime {int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct task_cputime_atomic *cputime_atomic,
			      struct task_cputime *sum)
{
	FUNC0(&cputime_atomic->utime, sum->utime);
	FUNC0(&cputime_atomic->stime, sum->stime);
	FUNC0(&cputime_atomic->sum_exec_runtime, sum->sum_exec_runtime);
}
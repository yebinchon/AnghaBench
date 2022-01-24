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
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {int dummy; } ;
struct task_cputime {int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  utime; int /*<<< orphan*/  stime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_cputime*) ; 

__attribute__((used)) static void FUNC2(struct task_struct *tsk, u64 *samples)
{
	struct task_cputime ct;

	FUNC1(tsk, &ct);
	FUNC0(samples, ct.stime, ct.utime, ct.sum_exec_runtime);
}
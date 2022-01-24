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
struct task_struct {struct reclaim_state* reclaim_state; } ;
struct reclaim_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct task_struct *task,
				   struct reclaim_state *rs)
{
	/* Check for an overwrite */
	FUNC0(rs && task->reclaim_state);

	/* Check for the nulling of an already-nulled member */
	FUNC0(!rs && !task->reclaim_state);

	task->reclaim_state = rs;
}
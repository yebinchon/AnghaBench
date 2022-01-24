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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static void FUNC3(struct task_struct *p)
{
	unsigned long flags;

	if (FUNC0(p, &flags)) {
		FUNC1(p, 0);
		FUNC2(p, &flags);
	}
}
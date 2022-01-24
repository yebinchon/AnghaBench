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
struct task_struct {int /*<<< orphan*/  utime; } ;

/* Variables and functions */
 int CPUTIME_NICE ; 
 int CPUTIME_USER ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *p, u64 cputime)
{
	int index;

	/* Add user time to process. */
	p->utime += cputime;
	FUNC0(p, cputime);

	index = (FUNC3(p) > 0) ? CPUTIME_NICE : CPUTIME_USER;

	/* Add user time to cpustat. */
	FUNC2(p, index, cputime);

	/* Account for user time used */
	FUNC1(p);
}
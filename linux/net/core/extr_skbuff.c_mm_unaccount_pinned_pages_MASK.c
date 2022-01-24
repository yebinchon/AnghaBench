#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmpin {TYPE_1__* user; int /*<<< orphan*/  num_pg; } ;
struct TYPE_2__ {int /*<<< orphan*/  locked_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(struct mmpin *mmp)
{
	if (mmp->user) {
		FUNC0(mmp->num_pg, &mmp->user->locked_vm);
		FUNC1(mmp->user);
	}
}
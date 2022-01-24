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
struct task_group {TYPE_1__* autogroup; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_group*) ; 

int FUNC2(struct task_group *tg, char *buf, int buflen)
{
	if (!FUNC1(tg))
		return 0;

	return FUNC0(buf, buflen, "%s-%ld", "/autogroup", tg->autogroup->id);
}
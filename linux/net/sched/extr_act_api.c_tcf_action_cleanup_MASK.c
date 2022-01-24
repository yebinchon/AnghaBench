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
struct tc_action {int /*<<< orphan*/  tcfa_rate_est; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct tc_action*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tc_action*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tc_action*) ; 

__attribute__((used)) static void FUNC3(struct tc_action *p)
{
	if (p->ops->cleanup)
		p->ops->cleanup(p);

	FUNC1(&p->tcfa_rate_est);
	FUNC0(p);
}
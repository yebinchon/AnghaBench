#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct aa_profile {struct aa_label label; TYPE_2__* ns; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  labels; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 struct aa_label* FUNC2 (int /*<<< orphan*/ *,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct list_head *list, struct aa_profile *profile)
{
	struct aa_label *l;

	FUNC0(!list);
	FUNC0(!profile);
	FUNC0(!profile->ns);
	FUNC0(!FUNC5(&profile->ns->lock));

	FUNC4(&profile->base.list, list);
	/* get list reference */
	FUNC1(profile);
	l = FUNC2(&profile->ns->labels, &profile->label);
	FUNC0(l != &profile->label);
	FUNC3(l);
}
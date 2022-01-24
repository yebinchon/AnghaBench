#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aa_label {int /*<<< orphan*/  flags; TYPE_1__* proxy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FLAG_STALE ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 TYPE_3__* FUNC3 (struct aa_label*) ; 
 TYPE_2__* FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct aa_label *orig, struct aa_label *new)
{
	struct aa_label *tmp;

	FUNC0(!orig);
	FUNC0(!new);
	FUNC5(&FUNC4(orig)->lock);

	tmp = FUNC7(orig->proxy->label,
					&FUNC3(orig)->lock);
	FUNC6(orig->proxy->label, FUNC1(new));
	orig->flags |= FLAG_STALE;
	FUNC2(tmp);
}
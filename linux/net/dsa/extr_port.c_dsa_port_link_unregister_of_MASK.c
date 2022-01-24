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
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int /*<<< orphan*/  dn; int /*<<< orphan*/  pl; struct dsa_switch* ds; } ;
struct TYPE_2__ {int /*<<< orphan*/  adjust_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsa_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct dsa_port *dp)
{
	struct dsa_switch *ds = dp->ds;

	if (!ds->ops->adjust_link) {
		FUNC5();
		FUNC4(dp->pl);
		FUNC6();
		FUNC3(dp->pl);
		return;
	}

	if (FUNC2(dp->dn))
		FUNC1(dp->dn);
	else
		FUNC0(dp, false);
}
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
struct dsa_switch {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct dsa_port {int /*<<< orphan*/  dn; struct dsa_switch* ds; } ;
struct TYPE_2__ {int /*<<< orphan*/  adjust_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dsa_port*) ; 
 int FUNC2 (struct dsa_port*) ; 
 int FUNC3 (struct dsa_port*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct dsa_port *dp)
{
	struct dsa_switch *ds = dp->ds;

	if (!ds->ops->adjust_link)
		return FUNC2(dp);

	FUNC0(ds->dev,
		 "Using legacy PHYLIB callbacks. Please migrate to PHYLINK!\n");

	if (FUNC4(dp->dn))
		return FUNC1(dp);
	else
		return FUNC3(dp, true);
}
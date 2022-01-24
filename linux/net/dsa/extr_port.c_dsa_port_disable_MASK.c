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
struct dsa_port {int index; int /*<<< orphan*/  bridge_dev; struct dsa_switch* ds; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_disable ) (struct dsa_switch*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int) ; 

void FUNC2(struct dsa_port *dp)
{
	struct dsa_switch *ds = dp->ds;
	int port = dp->index;

	if (!dp->bridge_dev)
		FUNC0(dp, BR_STATE_DISABLED);

	if (ds->ops->port_disable)
		ds->ops->port_disable(ds, port);
}
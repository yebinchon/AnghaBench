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
struct phylink_link_state {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int /*<<< orphan*/  index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* phylink_fixed_state ) (struct dsa_switch*,int /*<<< orphan*/ ,struct phylink_link_state*) ;} ;

/* Variables and functions */
 struct dsa_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int /*<<< orphan*/ ,struct phylink_link_state*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
					  struct phylink_link_state *state)
{
	struct dsa_port *dp = FUNC0(dev);
	struct dsa_switch *ds = dp->ds;

	/* No need to check that this operation is valid, the callback would
	 * not be called if it was not.
	 */
	ds->ops->phylink_fixed_state(ds, dp->index, state);
}
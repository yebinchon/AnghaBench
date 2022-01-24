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
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  pl; int /*<<< orphan*/  xmit_queue; int /*<<< orphan*/  xmit_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct net_device *slave_dev)
{
	struct dsa_port *dp = FUNC1(slave_dev);

	if (!FUNC3(slave_dev))
		return 0;

	FUNC0(&dp->xmit_work);
	FUNC7(&dp->xmit_queue);

	FUNC2(slave_dev);

	FUNC5();
	FUNC4(dp->pl);
	FUNC6();

	return 0;
}
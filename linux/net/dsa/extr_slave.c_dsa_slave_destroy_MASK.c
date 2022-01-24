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
struct dsa_slave_priv {int /*<<< orphan*/  stats64; } ;
struct dsa_port {int /*<<< orphan*/  pl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_PORT_UNREGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dsa_slave_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

void FUNC11(struct net_device *slave_dev)
{
	struct dsa_port *dp = FUNC1(slave_dev);
	struct dsa_slave_priv *p = FUNC4(slave_dev);

	FUNC5(slave_dev);
	FUNC8();
	FUNC7(dp->pl);
	FUNC9();

	FUNC0(slave_dev, DSA_PORT_UNREGISTER);
	FUNC10(slave_dev);
	FUNC6(dp->pl);
	FUNC3(p->stats64);
	FUNC2(slave_dev);
}
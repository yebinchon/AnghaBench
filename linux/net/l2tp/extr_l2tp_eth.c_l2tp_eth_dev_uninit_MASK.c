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
struct l2tp_eth_sess {int /*<<< orphan*/  dev; } ;
struct l2tp_eth {int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct l2tp_eth_sess* FUNC1 (int /*<<< orphan*/ ) ; 
 struct l2tp_eth* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct l2tp_eth *priv = FUNC2(dev);
	struct l2tp_eth_sess *spriv;

	spriv = FUNC1(priv->session);
	FUNC0(spriv->dev, NULL);
	/* No need for synchronize_net() here. We're called by
	 * unregister_netdev*(), which does the synchronisation for us.
	 */
}
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
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
#define  NETDEV_CHANGENAME 129 
#define  NETDEV_REGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct batadv_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(unsigned long event,
				       struct net_device *net_dev)
{
	struct batadv_priv *bat_priv;

	switch (event) {
	case NETDEV_REGISTER:
		FUNC2(net_dev);
		bat_priv = FUNC3(net_dev);
		FUNC1(bat_priv, BATADV_NO_FLAGS);
		break;
	case NETDEV_CHANGENAME:
		FUNC0(net_dev);
		break;
	}

	return NOTIFY_DONE;
}
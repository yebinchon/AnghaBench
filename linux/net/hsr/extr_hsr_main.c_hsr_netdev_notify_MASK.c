#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct hsr_priv {int /*<<< orphan*/  self_node_db; } ;
struct hsr_port {TYPE_1__* dev; struct hsr_priv* hsr; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int mtu; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSR_PT_MASTER ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_A ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_B ; 
#define  NETDEV_CHANGE 134 
#define  NETDEV_CHANGEADDR 133 
#define  NETDEV_CHANGEMTU 132 
#define  NETDEV_DOWN 131 
#define  NETDEV_PRE_TYPE_CHANGE 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hsr_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hsr_port*) ; 
 int FUNC5 (struct hsr_priv*) ; 
 struct hsr_port* FUNC6 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 struct hsr_port* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct net_device* FUNC9 (void*) ; 
 struct hsr_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC12(struct notifier_block *nb, unsigned long event,
			     void *ptr)
{
	struct net_device *dev;
	struct hsr_port *port, *master;
	struct hsr_priv *hsr;
	int mtu_max;
	int res;

	dev = FUNC9(ptr);
	port = FUNC7(dev);
	if (!port) {
		if (!FUNC8(dev))
			return NOTIFY_DONE;	/* Not an HSR device */
		hsr = FUNC10(dev);
		port = FUNC6(hsr, HSR_PT_MASTER);
		if (!port) {
			/* Resend of notification concerning removed device? */
			return NOTIFY_DONE;
		}
	} else {
		hsr = port->hsr;
	}

	switch (event) {
	case NETDEV_UP:		/* Administrative state DOWN */
	case NETDEV_DOWN:	/* Administrative state UP */
	case NETDEV_CHANGE:	/* Link (carrier) state changes */
		FUNC2(hsr);
		break;
	case NETDEV_CHANGEADDR:
		if (port->type == HSR_PT_MASTER) {
			/* This should not happen since there's no
			 * ndo_set_mac_address() for HSR devices - i.e. not
			 * supported.
			 */
			break;
		}

		master = FUNC6(hsr, HSR_PT_MASTER);

		if (port->type == HSR_PT_SLAVE_A) {
			FUNC1(master->dev->dev_addr, dev->dev_addr);
			FUNC0(NETDEV_CHANGEADDR,
						 master->dev);
		}

		/* Make sure we recognize frames from ourselves in hsr_rcv() */
		port = FUNC6(hsr, HSR_PT_SLAVE_B);
		res = FUNC3(&hsr->self_node_db,
					   master->dev->dev_addr,
					   port ?
						port->dev->dev_addr :
						master->dev->dev_addr);
		if (res)
			FUNC11(master->dev,
				    "Could not update HSR node address.\n");
		break;
	case NETDEV_CHANGEMTU:
		if (port->type == HSR_PT_MASTER)
			break; /* Handled in ndo_change_mtu() */
		mtu_max = FUNC5(port->hsr);
		master = FUNC6(port->hsr, HSR_PT_MASTER);
		master->dev->mtu = mtu_max;
		break;
	case NETDEV_UNREGISTER:
		FUNC4(port);
		break;
	case NETDEV_PRE_TYPE_CHANGE:
		/* HSR works only on Ethernet devices. Refuse slave to change
		 * its type.
		 */
		return NOTIFY_BAD;
	}

	return NOTIFY_DONE;
}
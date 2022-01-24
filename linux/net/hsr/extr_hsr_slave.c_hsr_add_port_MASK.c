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
struct hsr_priv {int /*<<< orphan*/  ports; } ;
struct hsr_port {int type; struct net_device* dev; int /*<<< orphan*/  port_list; struct hsr_priv* hsr; } ;
typedef  enum hsr_port_type { ____Placeholder_hsr_port_type } hsr_port_type ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HSR_PT_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsr_priv*) ; 
 struct hsr_port* FUNC3 (struct hsr_priv*,int) ; 
 int FUNC4 (struct net_device*,struct hsr_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsr_port*) ; 
 struct hsr_port* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct hsr_priv *hsr, struct net_device *dev,
		 enum hsr_port_type type)
{
	struct hsr_port *port, *master;
	int res;

	if (type != HSR_PT_MASTER) {
		res = FUNC1(dev);
		if (res)
			return res;
	}

	port = FUNC3(hsr, type);
	if (port)
		return -EBUSY;	/* This port already exists */

	port = FUNC6(sizeof(*port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	if (type != HSR_PT_MASTER) {
		res = FUNC4(dev, port);
		if (res)
			goto fail_dev_setup;
	}

	port->hsr = hsr;
	port->dev = dev;
	port->type = type;

	FUNC7(&port->port_list, &hsr->ports);
	FUNC9();

	master = FUNC3(hsr, HSR_PT_MASTER);
	FUNC8(master->dev);
	FUNC0(master->dev, FUNC2(hsr));

	return 0;

fail_dev_setup:
	FUNC5(port);
	return res;
}
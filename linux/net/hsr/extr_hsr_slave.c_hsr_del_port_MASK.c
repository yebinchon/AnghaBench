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
struct hsr_priv {int dummy; } ;
struct hsr_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  port_list; struct hsr_priv* hsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSR_PT_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hsr_priv*) ; 
 struct hsr_port* FUNC4 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hsr_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct hsr_port *port)
{
	struct hsr_priv *hsr;
	struct hsr_port *master;

	hsr = port->hsr;
	master = FUNC4(hsr, HSR_PT_MASTER);
	FUNC6(&port->port_list);

	if (port != master) {
		if (master) {
			FUNC8(master->dev);
			FUNC1(master->dev, FUNC3(hsr));
		}
		FUNC7(port->dev);
		FUNC2(port->dev, -1);
	}

	/* FIXME?
	 * netdev_upper_dev_unlink(port->dev, port->hsr->dev);
	 */

	FUNC9();

	if (port != master)
		FUNC0(port->dev);
	FUNC5(port);
}
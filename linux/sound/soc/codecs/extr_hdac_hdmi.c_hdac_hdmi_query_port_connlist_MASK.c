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
struct hdac_hdmi_port {scalar_t__ num_mux_nids; int id; int /*<<< orphan*/  mux_nids; } ;
struct hdac_hdmi_pin {int /*<<< orphan*/  nid; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC_WCAP_CONN_LIST ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HDA_MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct hdac_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hdac_device*,struct hdac_hdmi_port*) ; 
 scalar_t__ FUNC4 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hdac_device *hdev,
					struct hdac_hdmi_pin *pin,
					struct hdac_hdmi_port *port)
{
	if (!(FUNC2(hdev, pin->nid) & AC_WCAP_CONN_LIST)) {
		FUNC1(&hdev->dev,
			"HDMI: pin %d wcaps %#x does not support connection list\n",
			pin->nid, FUNC2(hdev, pin->nid));
		return -EINVAL;
	}

	if (FUNC3(hdev, port) < 0)
		return -EIO;

	port->num_mux_nids = FUNC4(hdev, pin->nid,
			port->mux_nids, HDA_MAX_CONNECTIONS);
	if (port->num_mux_nids == 0)
		FUNC1(&hdev->dev,
			"No connections found for pin:port %d:%d\n",
						pin->nid, port->id);

	FUNC0(&hdev->dev, "num_mux_nids %d for pin:port %d:%d\n",
			port->num_mux_nids, pin->nid, port->id);

	return port->num_mux_nids;
}
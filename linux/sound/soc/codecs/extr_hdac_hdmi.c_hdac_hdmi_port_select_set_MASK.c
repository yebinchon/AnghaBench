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
struct hdac_hdmi_port {int id; TYPE_1__* pin; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  nid; int /*<<< orphan*/  mst_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_DEVICE_SEL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hdac_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdac_device*,struct hdac_hdmi_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hdac_device *hdev,
					struct hdac_hdmi_port *port)
{
	int num_ports;

	if (!port->pin->mst_capable)
		return 0;

	/* AC_PAR_DEVLIST_LEN is 0 based. */
	num_ports = FUNC1(hdev, port->pin->nid);
	if (num_ports < 0)
		return -EIO;
	/*
	 * Device List Length is a 0 based integer value indicating the
	 * number of sink device that a MST Pin Widget can support.
	 */
	if (num_ports + 1  < port->id)
		return 0;

	FUNC3(hdev, port->pin->nid, 0,
			AC_VERB_SET_DEVICE_SEL, port->id);

	if (port->id != FUNC2(hdev, port))
		return -EIO;

	FUNC0(&hdev->dev, "Selected the port=%d\n", port->id);

	return 0;
}
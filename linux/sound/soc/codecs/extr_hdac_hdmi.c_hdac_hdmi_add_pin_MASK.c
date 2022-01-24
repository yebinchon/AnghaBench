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
struct hdac_hdmi_priv {int /*<<< orphan*/  num_ports; int /*<<< orphan*/  num_pin; int /*<<< orphan*/  pin_list; } ;
struct hdac_hdmi_pin {int mst_capable; scalar_t__ num_ports; int /*<<< orphan*/  head; struct hdac_device* hdev; int /*<<< orphan*/  nid; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hdac_hdmi_pin* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hdac_device*,struct hdac_hdmi_pin*) ; 
 struct hdac_hdmi_priv* FUNC2 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hdac_device *hdev, hda_nid_t nid)
{
	struct hdac_hdmi_priv *hdmi = FUNC2(hdev);
	struct hdac_hdmi_pin *pin;
	int ret;

	pin = FUNC0(&hdev->dev, sizeof(*pin), GFP_KERNEL);
	if (!pin)
		return -ENOMEM;

	pin->nid = nid;
	pin->mst_capable = false;
	pin->hdev = hdev;
	ret = FUNC1(hdev, pin);
	if (ret < 0)
		return ret;

	FUNC3(&pin->head, &hdmi->pin_list);
	hdmi->num_pin++;
	hdmi->num_ports += pin->num_ports;

	return 0;
}
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
struct hdac_hdmi_priv {int /*<<< orphan*/  num_cvt; int /*<<< orphan*/  cvt_list; } ;
struct hdac_hdmi_cvt {int nid; int /*<<< orphan*/  head; int /*<<< orphan*/  name; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct hdac_hdmi_cvt* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdac_device*,struct hdac_hdmi_cvt*) ; 
 struct hdac_hdmi_priv* FUNC3 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct hdac_device *hdev, hda_nid_t nid)
{
	struct hdac_hdmi_priv *hdmi = FUNC3(hdev);
	struct hdac_hdmi_cvt *cvt;
	char name[NAME_SIZE];

	cvt = FUNC1(&hdev->dev, sizeof(*cvt), GFP_KERNEL);
	if (!cvt)
		return -ENOMEM;

	cvt->nid = nid;
	FUNC5(name, "cvt %d", cvt->nid);
	cvt->name = FUNC0(&hdev->dev, name, GFP_KERNEL);
	if (!cvt->name)
		return -ENOMEM;

	FUNC4(&cvt->head, &hdmi->cvt_list);
	hdmi->num_cvt++;

	return FUNC2(hdev, cvt);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int channels_max; } ;
struct hdac_hdmi_priv {TYPE_1__ chmap; } ;
struct TYPE_4__ {int channels_min; unsigned int channels_max; int /*<<< orphan*/  maxbps; int /*<<< orphan*/  formats; int /*<<< orphan*/  rates; } ;
struct hdac_hdmi_cvt {int /*<<< orphan*/  nid; TYPE_2__ params; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (struct hdac_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct hdac_hdmi_priv* FUNC3 (struct hdac_device*) ; 
 int FUNC4 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct hdac_device *hdev, struct hdac_hdmi_cvt *cvt)
{
	unsigned int chans;
	struct hdac_hdmi_priv *hdmi = FUNC3(hdev);
	int err;

	chans = FUNC1(hdev, cvt->nid);
	chans = FUNC2(chans);

	cvt->params.channels_min = 2;

	cvt->params.channels_max = chans;
	if (chans > hdmi->chmap.channels_max)
		hdmi->chmap.channels_max = chans;

	err = FUNC4(hdev, cvt->nid,
			&cvt->params.rates,
			&cvt->params.formats,
			&cvt->params.maxbps);
	if (err < 0)
		FUNC0(&hdev->dev,
			"Failed to query pcm params for nid %d: %d\n",
			cvt->nid, err);

	return err;
}
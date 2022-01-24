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
struct hdac_hda_priv {int dummy; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_device {int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hdac_hda_priv*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdac_hda_codec ; 
 int /*<<< orphan*/  hdac_hda_dais ; 
 struct hdac_hda_priv* FUNC5 (struct hdac_device*) ; 
 struct hdac_ext_link* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 

__attribute__((used)) static int FUNC9(struct hdac_device *hdev)
{
	struct hdac_ext_link *hlink;
	struct hdac_hda_priv *hda_pvt;
	int ret;

	/* hold the ref while we probe */
	hlink = FUNC6(hdev->bus, FUNC2(&hdev->dev));
	if (!hlink) {
		FUNC1(&hdev->dev, "hdac link not found\n");
		return -EIO;
	}
	FUNC7(hdev->bus, hlink);

	hda_pvt = FUNC5(hdev);
	if (!hda_pvt)
		return -ENOMEM;

	/* ASoC specific initialization */
	ret = FUNC4(&hdev->dev,
					 &hdac_hda_codec, hdac_hda_dais,
					 FUNC0(hdac_hda_dais));
	if (ret < 0) {
		FUNC1(&hdev->dev, "failed to register HDA codec %d\n", ret);
		return ret;
	}

	FUNC3(&hdev->dev, hda_pvt);
	FUNC8(hdev->bus, hlink);

	return ret;
}
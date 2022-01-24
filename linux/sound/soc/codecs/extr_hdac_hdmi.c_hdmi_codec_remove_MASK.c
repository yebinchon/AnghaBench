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
struct snd_soc_component {int dummy; } ;
struct hdac_hdmi_priv {struct hdac_device* hdev; } ;
struct hdac_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hdac_hdmi_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct hdac_hdmi_priv *hdmi = FUNC3(component);
	struct hdac_device *hdev = hdmi->hdev;
	int ret;

	ret = FUNC2(hdev->bus, NULL);
	if (ret < 0)
		FUNC0(&hdev->dev, "notifier unregister failed: err: %d\n",
				ret);

	FUNC1(&hdev->dev);
}
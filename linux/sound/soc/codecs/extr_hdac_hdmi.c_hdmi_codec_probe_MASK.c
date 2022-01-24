#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct snd_soc_component {TYPE_2__* card; } ;
struct hdac_hdmi_priv {int /*<<< orphan*/  card; struct snd_soc_component* component; struct hdac_device* hdev; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct TYPE_7__ {struct hdac_device* audio_ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  snd_card; } ;

/* Variables and functions */
 int DL_FLAG_AUTOREMOVE_CONSUMER ; 
 int DL_FLAG_RPM_ACTIVE ; 
 int EIO ; 
 TYPE_3__ aops ; 
 int FUNC0 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_device*,struct hdac_hdmi_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct hdac_ext_link* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 
 struct snd_soc_dapm_context* FUNC11 (struct snd_soc_component*) ; 
 struct hdac_hdmi_priv* FUNC12 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component)
{
	struct hdac_hdmi_priv *hdmi = FUNC12(component);
	struct hdac_device *hdev = hdmi->hdev;
	struct snd_soc_dapm_context *dapm =
		FUNC11(component);
	struct hdac_ext_link *hlink = NULL;
	int ret;

	hdmi->component = component;

	/*
	 * hold the ref while we probe, also no need to drop the ref on
	 * exit, we call pm_runtime_suspend() so that will do for us
	 */
	hlink = FUNC9(hdev->bus, FUNC2(&hdev->dev));
	if (!hlink) {
		FUNC1(&hdev->dev, "hdac link not found\n");
		return -EIO;
	}

	FUNC10(hdev->bus, hlink);

	ret = FUNC0(dapm);
	if (ret < 0)
		return ret;

	aops.audio_ptr = hdev;
	ret = FUNC8(hdev->bus, &aops);
	if (ret < 0) {
		FUNC1(&hdev->dev, "notifier register failed: err: %d\n", ret);
		return ret;
	}

	FUNC4(hdev, hdmi, true);
	/* Imp: Store the card pointer in hda_codec */
	hdmi->card = dapm->card->snd_card;

	/*
	 * Setup a device_link between card device and HDMI codec device.
	 * The card device is the consumer and the HDMI codec device is
	 * the supplier. With this setting, we can make sure that the audio
	 * domain in display power will be always turned on before operating
	 * on the HDMI audio codec registers.
	 * Let's use the flag DL_FLAG_AUTOREMOVE_CONSUMER. This can make
	 * sure the device link is freed when the machine driver is removed.
	 */
	FUNC3(component->card->dev, &hdev->dev, DL_FLAG_RPM_ACTIVE |
			DL_FLAG_AUTOREMOVE_CONSUMER);
	/*
	 * hdac_device core already sets the state to active and calls
	 * get_noresume. So enable runtime and set the device to suspend.
	 */
	FUNC5(&hdev->dev);
	FUNC6(&hdev->dev);
	FUNC7(&hdev->dev);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_driver {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  get_spk_alloc; int /*<<< orphan*/  is_pcm_attached; int /*<<< orphan*/  set_chmap; int /*<<< orphan*/  get_chmap; } ;
struct TYPE_9__ {TYPE_1__ ops; } ;
struct hdac_hdmi_priv {int /*<<< orphan*/  pin_mutex; int /*<<< orphan*/  pcm_list; int /*<<< orphan*/  cvt_list; int /*<<< orphan*/  pin_list; struct hdac_hdmi_drv_data* drv_data; struct hdac_device* hdev; TYPE_2__ chmap; } ;
struct hdac_hdmi_drv_data {int dummy; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_driver {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  driver; } ;
struct hdac_device {int /*<<< orphan*/  bus; TYPE_3__ dev; int /*<<< orphan*/  addr; } ;
struct hda_device_id {scalar_t__ driver_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct hdac_hdmi_priv*) ; 
 struct hdac_hdmi_priv* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 
 struct hdac_driver* FUNC6 (int /*<<< orphan*/ ) ; 
 struct hda_device_id* FUNC7 (struct hdac_device*,struct hdac_driver*) ; 
 int /*<<< orphan*/  hdac_hdmi_get_chmap ; 
 int /*<<< orphan*/  hdac_hdmi_get_spk_alloc ; 
 int FUNC8 (struct hdac_device*,struct snd_soc_dai_driver**,int*) ; 
 int /*<<< orphan*/  hdac_hdmi_set_chmap ; 
 int /*<<< orphan*/  hdmi_hda_codec ; 
 struct hdac_hdmi_drv_data intel_drv_data ; 
 int /*<<< orphan*/  is_hdac_hdmi_pcm_attached ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hdac_ext_link* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 
 int /*<<< orphan*/  FUNC14 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct hdac_device*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct hdac_device *hdev)
{
	struct hdac_hdmi_priv *hdmi_priv = NULL;
	struct snd_soc_dai_driver *hdmi_dais = NULL;
	struct hdac_ext_link *hlink = NULL;
	int num_dais = 0;
	int ret = 0;
	struct hdac_driver *hdrv = FUNC6(hdev->dev.driver);
	const struct hda_device_id *hdac_id = FUNC7(hdev, hdrv);

	/* hold the ref while we probe */
	hlink = FUNC11(hdev->bus, FUNC2(&hdev->dev));
	if (!hlink) {
		FUNC1(&hdev->dev, "hdac link not found\n");
		return -EIO;
	}

	FUNC12(hdev->bus, hlink);

	hdmi_priv = FUNC4(&hdev->dev, sizeof(*hdmi_priv), GFP_KERNEL);
	if (hdmi_priv == NULL)
		return -ENOMEM;

	FUNC15(hdev, &hdmi_priv->chmap);
	hdmi_priv->chmap.ops.get_chmap = hdac_hdmi_get_chmap;
	hdmi_priv->chmap.ops.set_chmap = hdac_hdmi_set_chmap;
	hdmi_priv->chmap.ops.is_pcm_attached = is_hdac_hdmi_pcm_attached;
	hdmi_priv->chmap.ops.get_spk_alloc = hdac_hdmi_get_spk_alloc;
	hdmi_priv->hdev = hdev;

	if (!hdac_id)
		return -ENODEV;

	if (hdac_id->driver_data)
		hdmi_priv->drv_data =
			(struct hdac_hdmi_drv_data *)hdac_id->driver_data;
	else
		hdmi_priv->drv_data = &intel_drv_data;

	FUNC3(&hdev->dev, hdmi_priv);

	FUNC0(&hdmi_priv->pin_list);
	FUNC0(&hdmi_priv->cvt_list);
	FUNC0(&hdmi_priv->pcm_list);
	FUNC9(&hdmi_priv->pin_mutex);

	/*
	 * Turned off in the runtime_suspend during the first explicit
	 * pm_runtime_suspend call.
	 */
	FUNC10(hdev->bus, hdev->addr, true);

	ret = FUNC8(hdev, &hdmi_dais, &num_dais);
	if (ret < 0) {
		FUNC1(&hdev->dev,
			"Failed in parse and map nid with err: %d\n", ret);
		return ret;
	}
	FUNC14(hdev);

	/* ASoC specific initialization */
	ret = FUNC5(&hdev->dev, &hdmi_hda_codec,
					hdmi_dais, num_dais);

	FUNC13(hdev->bus, hlink);

	return ret;
}
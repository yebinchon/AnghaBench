#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sof_intel_dsp_desc {int init_core_mask; } ;
struct sof_dev_desc {struct sof_intel_dsp_desc* chip_info; } ;
struct snd_sof_pdata {TYPE_1__* fw; struct sof_dev_desc* desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  area; } ;
struct snd_sof_dev {int boot_complete; int /*<<< orphan*/  dev; TYPE_2__ dmab; int /*<<< orphan*/  boot_wait; struct snd_sof_pdata* pdata; } ;
struct hdac_ext_stream {int dummy; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_PP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_ROM_ERROR ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_ROM_STATUS ; 
 int HDA_FW_BOOT_ATTEMPTS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int SOF_DBG_MBOX ; 
 int SOF_DBG_PCI ; 
 int SOF_DBG_REGS ; 
 int /*<<< orphan*/  SOF_HDA_PPCTL_GPROCEN ; 
 int /*<<< orphan*/  SOF_HDA_REG_PP_PPCTL ; 
 int FUNC0 (struct snd_sof_dev*,TYPE_2__*,struct hdac_ext_stream*) ; 
 int FUNC1 (struct snd_sof_dev*,struct hdac_ext_stream*) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snd_sof_dev*,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct hdac_ext_stream* FUNC6 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct snd_sof_dev *sdev)
{
	struct snd_sof_pdata *plat_data = sdev->pdata;
	const struct sof_dev_desc *desc = plat_data->desc;
	const struct sof_intel_dsp_desc *chip_info;
	struct hdac_ext_stream *stream;
	struct firmware stripped_firmware;
	int ret, ret1, tag, i;

	chip_info = desc->chip_info;

	stripped_firmware.data = plat_data->fw->data;
	stripped_firmware.size = plat_data->fw->size;

	/* init for booting wait */
	FUNC8(&sdev->boot_wait);
	sdev->boot_complete = false;

	/* prepare DMA for code loader stream */
	tag = FUNC3(sdev, 0x40, stripped_firmware.size,
				&sdev->dmab, SNDRV_PCM_STREAM_PLAYBACK);

	if (tag < 0) {
		FUNC5(sdev->dev, "error: dma prepare for fw loading err: %x\n",
			tag);
		return tag;
	}

	/* get stream with tag */
	stream = FUNC6(sdev, tag);
	if (!stream) {
		FUNC5(sdev->dev,
			"error: could not get stream with stream tag %d\n",
			tag);
		ret = -ENODEV;
		goto err;
	}

	FUNC9(sdev->dmab.area, stripped_firmware.data,
	       stripped_firmware.size);

	/* try ROM init a few times before giving up */
	for (i = 0; i < HDA_FW_BOOT_ATTEMPTS; i++) {
		ret = FUNC2(sdev, stripped_firmware.data,
				  stripped_firmware.size, tag);

		/* don't retry anymore if successful */
		if (!ret)
			break;

		FUNC5(sdev->dev, "error: Error code=0x%x: FW status=0x%x\n",
			FUNC10(sdev, HDA_DSP_BAR,
					 HDA_DSP_SRAM_REG_ROM_ERROR),
			FUNC10(sdev, HDA_DSP_BAR,
					 HDA_DSP_SRAM_REG_ROM_STATUS));
		FUNC5(sdev->dev, "error: iteration %d of Core En/ROM load failed: %d\n",
			i, ret);
	}

	if (i == HDA_FW_BOOT_ATTEMPTS) {
		FUNC5(sdev->dev, "error: dsp init failed after %d attempts with err: %d\n",
			i, ret);
		goto cleanup;
	}

	/*
	 * at this point DSP ROM has been initialized and
	 * should be ready for code loading and firmware boot
	 */
	ret = FUNC1(sdev, stream);
	if (!ret)
		FUNC4(sdev->dev, "Firmware download successful, booting...\n");
	else
		FUNC5(sdev->dev, "error: load fw failed ret: %d\n", ret);

cleanup:
	/*
	 * Perform codeloader stream cleanup.
	 * This should be done even if firmware loading fails.
	 */
	ret1 = FUNC0(sdev, &sdev->dmab, stream);
	if (ret1 < 0) {
		FUNC5(sdev->dev, "error: Code loader DSP cleanup failed\n");

		/* set return value to indicate cleanup failure */
		ret = ret1;
	}

	/*
	 * return master core id if both fw copy
	 * and stream clean up are successful
	 */
	if (!ret)
		return chip_info->init_core_mask;

	/* dump dsp registers and disable DSP upon error */
err:
	FUNC7(sdev, SOF_DBG_REGS | SOF_DBG_PCI | SOF_DBG_MBOX);

	/* disable DSP */
	FUNC11(sdev, HDA_DSP_PP_BAR,
				SOF_HDA_REG_PP_PPCTL,
				SOF_HDA_PPCTL_GPROCEN, 0);
	return ret;
}
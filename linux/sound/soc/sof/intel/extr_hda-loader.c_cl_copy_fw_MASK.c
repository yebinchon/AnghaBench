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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct hdac_ext_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_BASEFW_TIMEOUT_US ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 unsigned int HDA_DSP_ROM_FW_ENTERED ; 
 unsigned int HDA_DSP_ROM_STS_MASK ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_ROM_STATUS ; 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_START ; 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_STOP ; 
 int FUNC0 (struct snd_sof_dev*,struct hdac_ext_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_sof_dev *sdev, struct hdac_ext_stream *stream)
{
	unsigned int reg;
	int ret, status;

	ret = FUNC0(sdev, stream, SNDRV_PCM_TRIGGER_START);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: DMA trigger start failed\n");
		return ret;
	}

	status = FUNC2(sdev, HDA_DSP_BAR,
					HDA_DSP_SRAM_REG_ROM_STATUS, reg,
					((reg & HDA_DSP_ROM_STS_MASK)
						== HDA_DSP_ROM_FW_ENTERED),
					HDA_DSP_REG_POLL_INTERVAL_US,
					HDA_DSP_BASEFW_TIMEOUT_US);

	ret = FUNC0(sdev, stream, SNDRV_PCM_TRIGGER_STOP);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: DMA trigger stop failed\n");
		return ret;
	}

	return status;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct sof_intel_hda_dev {struct sof_intel_dsp_desc* desc; } ;
struct sof_intel_dsp_desc {int cores_mask; int ssp_count; int ipc_req_mask; unsigned int ipc_ack_mask; int rom_init_timeout; int /*<<< orphan*/  ipc_ack; int /*<<< orphan*/  ipc_req; scalar_t__ ssp_base_offset; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HDA_DSP_INIT_TIMEOUT_US ; 
 int HDA_DSP_IPC_PURGE_FW ; 
 int /*<<< orphan*/  HDA_DSP_REG_POLL_INTERVAL_US ; 
 unsigned int HDA_DSP_ROM_INIT ; 
 unsigned int HDA_DSP_ROM_STS_MASK ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_ROM_STATUS ; 
 int SOF_DBG_MBOX ; 
 int SOF_DBG_PCI ; 
 int SOF_DBG_REGS ; 
 int SSP_DEV_MEM_SIZE ; 
 int /*<<< orphan*/  SSP_SET_SLAVE ; 
 scalar_t__ SSP_SSC1_OFFSET ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct snd_sof_dev*,int) ; 
 int FUNC3 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int) ; 
 int FUNC5 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sof_dev*) ; 
 int FUNC8 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_sof_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct snd_sof_dev *sdev, const void *fwdata,
		       u32 fwsize, int stream_tag)
{
	struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
	const struct sof_intel_dsp_desc *chip = hda->desc;
	unsigned int status;
	int ret;
	int i;

	/* step 1: power up corex */
	ret = FUNC3(sdev, chip->cores_mask);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: dsp core 0/1 power up failed\n");
		goto err;
	}

	/* DSP is powered up, set all SSPs to slave mode */
	for (i = 0; i < chip->ssp_count; i++) {
		FUNC9(sdev, HDA_DSP_BAR,
						 chip->ssp_base_offset
						 + i * SSP_DEV_MEM_SIZE
						 + SSP_SSC1_OFFSET,
						 SSP_SET_SLAVE,
						 SSP_SET_SLAVE);
	}

	/* step 2: purge FW request */
	FUNC10(sdev, HDA_DSP_BAR, chip->ipc_req,
			  chip->ipc_req_mask | (HDA_DSP_IPC_PURGE_FW |
			  ((stream_tag - 1) << 9)));

	/* step 3: unset core 0 reset state & unstall/run core 0 */
	ret = FUNC5(sdev, FUNC0(0));
	if (ret < 0) {
		FUNC1(sdev->dev, "error: dsp core start failed %d\n", ret);
		ret = -EIO;
		goto err;
	}

	/* step 4: wait for IPC DONE bit from ROM */
	ret = FUNC8(sdev, HDA_DSP_BAR,
					    chip->ipc_ack, status,
					    ((status & chip->ipc_ack_mask)
						    == chip->ipc_ack_mask),
					    HDA_DSP_REG_POLL_INTERVAL_US,
					    HDA_DSP_INIT_TIMEOUT_US);

	if (ret < 0) {
		FUNC1(sdev->dev, "error: waiting for HIPCIE done\n");
		goto err;
	}

	/* step 5: power down corex */
	ret = FUNC2(sdev,
				  chip->cores_mask & ~(FUNC0(0)));
	if (ret < 0) {
		FUNC1(sdev->dev, "error: dsp core x power down failed\n");
		goto err;
	}

	/* step 6: enable IPC interrupts */
	FUNC7(sdev);

	/* step 7: wait for ROM init */
	ret = FUNC8(sdev, HDA_DSP_BAR,
					HDA_DSP_SRAM_REG_ROM_STATUS, status,
					((status & HDA_DSP_ROM_STS_MASK)
						== HDA_DSP_ROM_INIT),
					HDA_DSP_REG_POLL_INTERVAL_US,
					chip->rom_init_timeout *
					USEC_PER_MSEC);
	if (!ret)
		return 0;

err:
	FUNC6(sdev, SOF_DBG_REGS | SOF_DBG_PCI | SOF_DBG_MBOX);
	FUNC4(sdev, chip->cores_mask);

	return ret;
}
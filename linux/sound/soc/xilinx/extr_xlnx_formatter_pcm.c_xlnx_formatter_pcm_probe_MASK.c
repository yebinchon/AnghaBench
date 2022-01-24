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
typedef  int u32 ;
struct xlnx_pcm_drv_data {int mm2s_presence; int mm2s_irq; int s2mm_presence; int s2mm_irq; scalar_t__ axi_clk; scalar_t__ mmio; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int AUD_CFG_MM2S_MASK ; 
 int AUD_CFG_S2MM_MASK ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ XLNX_AUD_CORE_CONFIG ; 
 scalar_t__ XLNX_MM2S_OFFSET ; 
 scalar_t__ XLNX_S2MM_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct xlnx_pcm_drv_data*) ; 
 scalar_t__ FUNC6 (struct device*,char*) ; 
 scalar_t__ FUNC7 (struct device*,struct resource*) ; 
 struct xlnx_pcm_drv_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct platform_device*,char*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  xlnx_asoc_component ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  xlnx_mm2s_irq_handler ; 
 int /*<<< orphan*/  xlnx_s2mm_irq_handler ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret;
	u32 val;
	struct xlnx_pcm_drv_data *aud_drv_data;
	struct resource *res;
	struct device *dev = &pdev->dev;

	aud_drv_data = FUNC8(dev, sizeof(*aud_drv_data), GFP_KERNEL);
	if (!aud_drv_data)
		return -ENOMEM;

	aud_drv_data->axi_clk = FUNC6(dev, "s_axi_lite_aclk");
	if (FUNC0(aud_drv_data->axi_clk)) {
		ret = FUNC1(aud_drv_data->axi_clk);
		FUNC4(dev, "failed to get s_axi_lite_aclk(%d)\n", ret);
		return ret;
	}
	ret = FUNC3(aud_drv_data->axi_clk);
	if (ret) {
		FUNC4(dev,
			"failed to enable s_axi_lite_aclk(%d)\n", ret);
		return ret;
	}

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(dev, "audio formatter node:addr to resource failed\n");
		ret = -ENXIO;
		goto clk_err;
	}
	aud_drv_data->mmio = FUNC7(dev, res);
	if (FUNC0(aud_drv_data->mmio)) {
		FUNC4(dev, "audio formatter ioremap failed\n");
		ret = FUNC1(aud_drv_data->mmio);
		goto clk_err;
	}

	val = FUNC13(aud_drv_data->mmio + XLNX_AUD_CORE_CONFIG);
	if (val & AUD_CFG_MM2S_MASK) {
		aud_drv_data->mm2s_presence = true;
		ret = FUNC15(aud_drv_data->mmio +
					       XLNX_MM2S_OFFSET);
		if (ret) {
			FUNC4(dev, "audio formatter reset failed\n");
			goto clk_err;
		}
		FUNC14(aud_drv_data->mmio +
					    XLNX_MM2S_OFFSET,
					    SNDRV_PCM_STREAM_PLAYBACK);

		aud_drv_data->mm2s_irq = FUNC11(pdev,
								 "irq_mm2s");
		if (aud_drv_data->mm2s_irq < 0) {
			ret = aud_drv_data->mm2s_irq;
			goto clk_err;
		}
		ret = FUNC9(dev, aud_drv_data->mm2s_irq,
				       xlnx_mm2s_irq_handler, 0,
				       "xlnx_formatter_pcm_mm2s_irq", dev);
		if (ret) {
			FUNC4(dev, "xlnx audio mm2s irq request failed\n");
			goto clk_err;
		}
	}
	if (val & AUD_CFG_S2MM_MASK) {
		aud_drv_data->s2mm_presence = true;
		ret = FUNC15(aud_drv_data->mmio +
					       XLNX_S2MM_OFFSET);
		if (ret) {
			FUNC4(dev, "audio formatter reset failed\n");
			goto clk_err;
		}
		FUNC14(aud_drv_data->mmio +
					    XLNX_S2MM_OFFSET,
					    SNDRV_PCM_STREAM_CAPTURE);

		aud_drv_data->s2mm_irq = FUNC11(pdev,
								 "irq_s2mm");
		if (aud_drv_data->s2mm_irq < 0) {
			ret = aud_drv_data->s2mm_irq;
			goto clk_err;
		}
		ret = FUNC9(dev, aud_drv_data->s2mm_irq,
				       xlnx_s2mm_irq_handler, 0,
				       "xlnx_formatter_pcm_s2mm_irq",
				       dev);
		if (ret) {
			FUNC4(dev, "xlnx audio s2mm irq request failed\n");
			goto clk_err;
		}
	}

	FUNC5(dev, aud_drv_data);

	ret = FUNC10(dev, &xlnx_asoc_component,
					      NULL, 0);
	if (ret) {
		FUNC4(dev, "pcm platform device register failed\n");
		goto clk_err;
	}

	return 0;

clk_err:
	FUNC2(aud_drv_data->axi_clk);
	return ret;
}
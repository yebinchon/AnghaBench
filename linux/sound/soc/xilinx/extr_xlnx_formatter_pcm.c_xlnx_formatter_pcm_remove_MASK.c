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
struct xlnx_pcm_drv_data {int /*<<< orphan*/  axi_clk; scalar_t__ mmio; scalar_t__ mm2s_presence; scalar_t__ s2mm_presence; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ XLNX_MM2S_OFFSET ; 
 scalar_t__ XLNX_S2MM_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct xlnx_pcm_drv_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret = 0;
	struct xlnx_pcm_drv_data *adata = FUNC2(&pdev->dev);

	if (adata->s2mm_presence)
		ret = FUNC3(adata->mmio + XLNX_S2MM_OFFSET);

	/* Try MM2S reset, even if S2MM  reset fails */
	if (adata->mm2s_presence)
		ret = FUNC3(adata->mmio + XLNX_MM2S_OFFSET);

	if (ret)
		FUNC1(&pdev->dev, "audio formatter reset failed\n");

	FUNC0(adata->axi_clk);
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int IMX_AUDMUX_V1_PCR_RCLKDIR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_RFSDIR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_SYN ; 
 int IMX_AUDMUX_V1_PCR_TCLKDIR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_TFSDIR ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V2_PTCR_RCLKDIR ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V2_PTCR_RFSDIR ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V2_PTCR_SYN ; 
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V2_PTCR_TFSDIR ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MX27_AUDMUX_HPCR1_SSI0 ; 
 int /*<<< orphan*/  MX27_AUDMUX_HPCR3_SSI_PINS_4 ; 
 int /*<<< orphan*/  MX31_AUDMUX_PORT1_SSI0 ; 
 int /*<<< orphan*/  MX31_AUDMUX_PORT4_SSI_PINS_4 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__ imx_mc13783 ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	int ret;

	imx_mc13783.dev = &pdev->dev;

	ret = FUNC16(&imx_mc13783);
	if (ret) {
		FUNC10(&pdev->dev, "snd_soc_register_card failed (%d)\n",
			ret);
		return ret;
	}

	if (FUNC14() || FUNC15()) {
		FUNC12(MX31_AUDMUX_PORT4_SSI_PINS_4,
			IMX_AUDMUX_V2_PTCR_SYN,
			FUNC5(MX31_AUDMUX_PORT1_SSI0) |
			FUNC4(1) |
			FUNC3(0xfc));
		FUNC12(MX31_AUDMUX_PORT1_SSI0,
			IMX_AUDMUX_V2_PTCR_SYN |
			IMX_AUDMUX_V2_PTCR_TFSDIR |
			FUNC9(MX31_AUDMUX_PORT4_SSI_PINS_4) |
			IMX_AUDMUX_V2_PTCR_TCLKDIR |
			FUNC8(MX31_AUDMUX_PORT4_SSI_PINS_4) |
			IMX_AUDMUX_V2_PTCR_RFSDIR |
			FUNC7(MX31_AUDMUX_PORT4_SSI_PINS_4) |
			IMX_AUDMUX_V2_PTCR_RCLKDIR |
			FUNC6(MX31_AUDMUX_PORT4_SSI_PINS_4),
			FUNC5(MX31_AUDMUX_PORT4_SSI_PINS_4));
	} else if (FUNC13()) {
		FUNC11(MX27_AUDMUX_HPCR1_SSI0,
			IMX_AUDMUX_V1_PCR_SYN |
			IMX_AUDMUX_V1_PCR_TFSDIR |
			IMX_AUDMUX_V1_PCR_TCLKDIR |
			IMX_AUDMUX_V1_PCR_RFSDIR |
			IMX_AUDMUX_V1_PCR_RCLKDIR |
			FUNC2(MX27_AUDMUX_HPCR3_SSI_PINS_4) |
			FUNC0(MX27_AUDMUX_HPCR3_SSI_PINS_4) |
			FUNC1(MX27_AUDMUX_HPCR3_SSI_PINS_4)
		);
		FUNC11(MX27_AUDMUX_HPCR3_SSI_PINS_4,
			IMX_AUDMUX_V1_PCR_SYN |
			FUNC1(MX27_AUDMUX_HPCR1_SSI0)
		);
	}

	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_8__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {TYPE_3__* codecs; TYPE_2__* platforms; TYPE_1__* cpus; } ;
struct TYPE_12__ {char* name; TYPE_8__* dev; } ;
struct TYPE_11__ {char* name; struct device_node* of_node; } ;
struct TYPE_10__ {char* name; struct device_node* of_node; } ;
struct TYPE_9__ {char* dai_name; struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int IMX_AUDMUX_V1_PCR_RCLKDIR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_RFSDIR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_SYN ; 
 int IMX_AUDMUX_V1_PCR_TCLKDIR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int IMX_AUDMUX_V1_PCR_TFSDIR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IMX_AUDMUX_V2_PTCR_SYN ; 
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ; 
 int FUNC4 (int) ; 
 int IMX_AUDMUX_V2_PTCR_TFSDIR ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  MX27_AUDMUX_HPCR1_SSI0 ; 
 int /*<<< orphan*/  MX27_AUDMUX_HPCR3_SSI_PINS_4 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,char*,...) ; 
 TYPE_4__ eukrea_tlv320 ; 
 TYPE_6__ eukrea_tlv320_dai ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 struct device_node* FUNC15 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device_node*,char*,int*) ; 
 int FUNC17 (TYPE_4__*,char*) ; 
 int FUNC18 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	int ret;
	int int_port = 0, ext_port;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *ssi_np = NULL, *codec_np = NULL;

	eukrea_tlv320.dev = &pdev->dev;
	if (np) {
		ret = FUNC17(&eukrea_tlv320,
						 "eukrea,model");
		if (ret) {
			FUNC6(&pdev->dev,
				"eukrea,model node missing or invalid.\n");
			goto err;
		}

		ssi_np = FUNC15(pdev->dev.of_node,
					  "ssi-controller", 0);
		if (!ssi_np) {
			FUNC6(&pdev->dev,
				"ssi-controller missing or invalid.\n");
			ret = -ENODEV;
			goto err;
		}

		codec_np = FUNC15(ssi_np, "codec-handle", 0);
		if (codec_np)
			eukrea_tlv320_dai.codecs->of_node = codec_np;
		else
			FUNC6(&pdev->dev, "codec-handle node missing or invalid.\n");

		ret = FUNC16(np, "fsl,mux-int-port", &int_port);
		if (ret) {
			FUNC6(&pdev->dev,
				"fsl,mux-int-port node missing or invalid.\n");
			goto err;
		}
		ret = FUNC16(np, "fsl,mux-ext-port", &ext_port);
		if (ret) {
			FUNC6(&pdev->dev,
				"fsl,mux-ext-port node missing or invalid.\n");
			goto err;
		}

		/*
		 * The port numbering in the hardware manual starts at 1, while
		 * the audmux API expects it starts at 0.
		 */
		int_port--;
		ext_port--;

		eukrea_tlv320_dai.cpus->of_node = ssi_np;
		eukrea_tlv320_dai.platforms->of_node = ssi_np;
	} else {
		eukrea_tlv320_dai.cpus->dai_name = "imx-ssi.0";
		eukrea_tlv320_dai.platforms->name = "imx-ssi.0";
		eukrea_tlv320_dai.codecs->name = "tlv320aic23-codec.0-001a";
		eukrea_tlv320.name = "cpuimx-audio";
	}

	if (FUNC10() ||
	    FUNC13(NULL, NULL, "fsl,imx21-audmux")) {
		FUNC7(MX27_AUDMUX_HPCR1_SSI0,
			IMX_AUDMUX_V1_PCR_SYN |
			IMX_AUDMUX_V1_PCR_TFSDIR |
			IMX_AUDMUX_V1_PCR_TCLKDIR |
			IMX_AUDMUX_V1_PCR_RFSDIR |
			IMX_AUDMUX_V1_PCR_RCLKDIR |
			FUNC2(MX27_AUDMUX_HPCR3_SSI_PINS_4) |
			FUNC0(MX27_AUDMUX_HPCR3_SSI_PINS_4) |
			FUNC1(MX27_AUDMUX_HPCR3_SSI_PINS_4)
		);
		FUNC7(MX27_AUDMUX_HPCR3_SSI_PINS_4,
			IMX_AUDMUX_V1_PCR_SYN |
			FUNC1(MX27_AUDMUX_HPCR1_SSI0)
		);
	} else if (FUNC9() ||
		   FUNC11() ||
		   FUNC12() ||
		   FUNC13(NULL, NULL, "fsl,imx31-audmux")) {
		if (!np)
			ext_port = FUNC9() ?
				4 : 3;

		FUNC8(int_port,
			IMX_AUDMUX_V2_PTCR_SYN |
			IMX_AUDMUX_V2_PTCR_TFSDIR |
			FUNC5(ext_port) |
			IMX_AUDMUX_V2_PTCR_TCLKDIR |
			FUNC4(ext_port),
			FUNC3(ext_port)
		);
		FUNC8(ext_port,
			IMX_AUDMUX_V2_PTCR_SYN,
			FUNC3(int_port)
		);
	} else {
		if (np) {
			/* The eukrea,asoc-tlv320 driver was explicitly
			 * requested (through the device tree).
			 */
			FUNC6(&pdev->dev,
				"Missing or invalid audmux DT node.\n");
			return -ENODEV;
		} else {
			/* Return happy.
			 * We might run on a totally different machine.
			 */
			return 0;
		}
	}

	ret = FUNC18(&eukrea_tlv320);
err:
	if (ret)
		FUNC6(&pdev->dev, "snd_soc_register_card failed (%d)\n", ret);
	FUNC14(ssi_np);

	return ret;
}
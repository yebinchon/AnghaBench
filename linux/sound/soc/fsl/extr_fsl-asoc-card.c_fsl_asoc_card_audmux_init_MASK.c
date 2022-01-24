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
typedef  int u32 ;
struct fsl_asoc_card_priv {int dai_fmt; TYPE_1__* pdev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 int IMX_AUDMUX_V2_PTCR_RCLKDIR ; 
 int FUNC1 (int) ; 
 int IMX_AUDMUX_V2_PTCR_RFSDIR ; 
 int FUNC2 (int) ; 
 int IMX_AUDMUX_V2_PTCR_SYN ; 
 int IMX_AUDMUX_V2_PTCR_TCLKDIR ; 
 int FUNC3 (int) ; 
 int IMX_AUDMUX_V2_PTCR_TFSDIR ; 
 int FUNC4 (int) ; 
#define  SND_SOC_DAIFMT_CBM_CFM 131 
#define  SND_SOC_DAIFMT_CBM_CFS 130 
#define  SND_SOC_DAIFMT_CBS_CFM 129 
#define  SND_SOC_DAIFMT_CBS_CFS 128 
 int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 scalar_t__ FUNC6 (struct fsl_asoc_card_priv*) ; 
 int FUNC7 (int,int,unsigned int) ; 
 int FUNC8 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC9(struct device_node *np,
				     struct fsl_asoc_card_priv *priv)
{
	struct device *dev = &priv->pdev->dev;
	u32 int_ptcr = 0, ext_ptcr = 0;
	int int_port, ext_port;
	int ret;

	ret = FUNC8(np, "mux-int-port", &int_port);
	if (ret) {
		FUNC5(dev, "mux-int-port missing or invalid\n");
		return ret;
	}
	ret = FUNC8(np, "mux-ext-port", &ext_port);
	if (ret) {
		FUNC5(dev, "mux-ext-port missing or invalid\n");
		return ret;
	}

	/*
	 * The port numbering in the hardware manual starts at 1, while
	 * the AUDMUX API expects it starts at 0.
	 */
	int_port--;
	ext_port--;

	/*
	 * Use asynchronous mode (6 wires) for all cases except AC97.
	 * If only 4 wires are needed, just set SSI into
	 * synchronous mode and enable 4 PADs in IOMUX.
	 */
	switch (priv->dai_fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		int_ptcr = FUNC2(8 | ext_port) |
			   FUNC1(8 | ext_port) |
			   FUNC4(ext_port) |
			   FUNC3(ext_port) |
			   IMX_AUDMUX_V2_PTCR_RFSDIR |
			   IMX_AUDMUX_V2_PTCR_RCLKDIR |
			   IMX_AUDMUX_V2_PTCR_TFSDIR |
			   IMX_AUDMUX_V2_PTCR_TCLKDIR;
		break;
	case SND_SOC_DAIFMT_CBM_CFS:
		int_ptcr = FUNC1(8 | ext_port) |
			   FUNC3(ext_port) |
			   IMX_AUDMUX_V2_PTCR_RCLKDIR |
			   IMX_AUDMUX_V2_PTCR_TCLKDIR;
		ext_ptcr = FUNC2(8 | int_port) |
			   FUNC4(int_port) |
			   IMX_AUDMUX_V2_PTCR_RFSDIR |
			   IMX_AUDMUX_V2_PTCR_TFSDIR;
		break;
	case SND_SOC_DAIFMT_CBS_CFM:
		int_ptcr = FUNC2(8 | ext_port) |
			   FUNC4(ext_port) |
			   IMX_AUDMUX_V2_PTCR_RFSDIR |
			   IMX_AUDMUX_V2_PTCR_TFSDIR;
		ext_ptcr = FUNC1(8 | int_port) |
			   FUNC3(int_port) |
			   IMX_AUDMUX_V2_PTCR_RCLKDIR |
			   IMX_AUDMUX_V2_PTCR_TCLKDIR;
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		ext_ptcr = FUNC2(8 | int_port) |
			   FUNC1(8 | int_port) |
			   FUNC4(int_port) |
			   FUNC3(int_port) |
			   IMX_AUDMUX_V2_PTCR_RFSDIR |
			   IMX_AUDMUX_V2_PTCR_RCLKDIR |
			   IMX_AUDMUX_V2_PTCR_TFSDIR |
			   IMX_AUDMUX_V2_PTCR_TCLKDIR;
		break;
	default:
		if (!FUNC6(priv))
			return -EINVAL;
	}

	if (FUNC6(priv)) {
		int_ptcr = IMX_AUDMUX_V2_PTCR_SYN |
			   FUNC3(ext_port) |
			   IMX_AUDMUX_V2_PTCR_TCLKDIR;
		ext_ptcr = IMX_AUDMUX_V2_PTCR_SYN |
			   FUNC4(int_port) |
			   IMX_AUDMUX_V2_PTCR_TFSDIR;
	}

	/* Asynchronous mode can not be set along with RCLKDIR */
	if (!FUNC6(priv)) {
		unsigned int pdcr =
				FUNC0(ext_port);

		ret = FUNC7(int_port, 0,
						   pdcr);
		if (ret) {
			FUNC5(dev, "audmux internal port setup failed\n");
			return ret;
		}
	}

	ret = FUNC7(int_port, int_ptcr,
					   FUNC0(ext_port));
	if (ret) {
		FUNC5(dev, "audmux internal port setup failed\n");
		return ret;
	}

	if (!FUNC6(priv)) {
		unsigned int pdcr =
				FUNC0(int_port);

		ret = FUNC7(ext_port, 0,
						   pdcr);
		if (ret) {
			FUNC5(dev, "audmux external port setup failed\n");
			return ret;
		}
	}

	ret = FUNC7(ext_port, ext_ptcr,
					   FUNC0(int_port));
	if (ret) {
		FUNC5(dev, "audmux external port setup failed\n");
		return ret;
	}

	return 0;
}
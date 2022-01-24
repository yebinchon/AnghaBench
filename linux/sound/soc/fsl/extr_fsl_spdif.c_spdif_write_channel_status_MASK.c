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
struct spdif_mixer_control {int /*<<< orphan*/ * ch_status; } ;
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_spdif_priv {struct platform_device* pdev; struct regmap* regmap; struct spdif_mixer_control fsl_spdif_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SPDIF_STCSCH ; 
 int /*<<< orphan*/  REG_SPDIF_STCSCL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct fsl_spdif_priv *spdif_priv)
{
	struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
	struct regmap *regmap = spdif_priv->regmap;
	struct platform_device *pdev = spdif_priv->pdev;
	u32 ch_status;

	ch_status = (FUNC0(ctrl->ch_status[0]) << 16) |
		    (FUNC0(ctrl->ch_status[1]) << 8) |
		    FUNC0(ctrl->ch_status[2]);
	FUNC2(regmap, REG_SPDIF_STCSCH, ch_status);

	FUNC1(&pdev->dev, "STCSCH: 0x%06x\n", ch_status);

	ch_status = FUNC0(ctrl->ch_status[3]) << 16;
	FUNC2(regmap, REG_SPDIF_STCSCL, ch_status);

	FUNC1(&pdev->dev, "STCSCL: 0x%06x\n", ch_status);
}
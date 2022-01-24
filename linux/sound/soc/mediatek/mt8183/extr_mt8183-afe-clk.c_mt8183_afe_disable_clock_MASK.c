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
struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 size_t CLK_AFE ; 
 size_t CLK_I2S1_BCLK_SW ; 
 size_t CLK_I2S2_BCLK_SW ; 
 size_t CLK_I2S3_BCLK_SW ; 
 size_t CLK_I2S4_BCLK_SW ; 
 size_t CLK_INFRA_SYS_AUDIO ; 
 size_t CLK_MUX_AUDIO ; 
 size_t CLK_MUX_AUDIOINTBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct mtk_base_afe *afe)
{
	struct mt8183_afe_private *afe_priv = afe->platform_priv;

	FUNC0(afe_priv->clk[CLK_I2S4_BCLK_SW]);
	FUNC0(afe_priv->clk[CLK_I2S3_BCLK_SW]);
	FUNC0(afe_priv->clk[CLK_I2S2_BCLK_SW]);
	FUNC0(afe_priv->clk[CLK_I2S1_BCLK_SW]);
	FUNC0(afe_priv->clk[CLK_AFE]);
	FUNC0(afe_priv->clk[CLK_MUX_AUDIOINTBUS]);
	FUNC0(afe_priv->clk[CLK_MUX_AUDIO]);
	FUNC0(afe_priv->clk[CLK_INFRA_SYS_AUDIO]);

	return 0;
}
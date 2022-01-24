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
struct mtk_base_afe {int /*<<< orphan*/  regmap; struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int /*<<< orphan*/ * clocks; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_CONN_24BIT ; 
 int AFE_CONN_24BIT_O03 ; 
 int AFE_CONN_24BIT_O04 ; 
 int /*<<< orphan*/  AFE_DAC_CON0 ; 
 int /*<<< orphan*/  AFE_IRQ_MCU_EN ; 
 int /*<<< orphan*/  AUDIO_TOP_CON0 ; 
 int AUD_TCON0_PDN_AFE ; 
 size_t MT8173_CLK_BCK0 ; 
 size_t MT8173_CLK_BCK1 ; 
 size_t MT8173_CLK_I2S1_M ; 
 size_t MT8173_CLK_I2S2_M ; 
 size_t MT8173_CLK_INFRASYS_AUD ; 
 size_t MT8173_CLK_TOP_PDN_AUD ; 
 size_t MT8173_CLK_TOP_PDN_AUD_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk_base_afe* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct mtk_base_afe *afe = FUNC2(dev);
	struct mt8173_afe_private *afe_priv = afe->platform_priv;
	int ret;

	ret = FUNC1(afe_priv->clocks[MT8173_CLK_INFRASYS_AUD]);
	if (ret)
		return ret;

	ret = FUNC1(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD_BUS]);
	if (ret)
		goto err_infra;

	ret = FUNC1(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD]);
	if (ret)
		goto err_top_aud_bus;

	ret = FUNC1(afe_priv->clocks[MT8173_CLK_BCK0]);
	if (ret)
		goto err_top_aud;

	ret = FUNC1(afe_priv->clocks[MT8173_CLK_BCK1]);
	if (ret)
		goto err_bck0;
	ret = FUNC1(afe_priv->clocks[MT8173_CLK_I2S1_M]);
	if (ret)
		goto err_i2s1_m;
	ret = FUNC1(afe_priv->clocks[MT8173_CLK_I2S2_M]);
	if (ret)
		goto err_i2s2_m;

	/* enable AFE clk */
	FUNC3(afe->regmap, AUDIO_TOP_CON0, AUD_TCON0_PDN_AFE, 0);

	/* set O3/O4 16bits */
	FUNC3(afe->regmap, AFE_CONN_24BIT,
			   AFE_CONN_24BIT_O03 | AFE_CONN_24BIT_O04, 0);

	/* unmask all IRQs */
	FUNC3(afe->regmap, AFE_IRQ_MCU_EN, 0xff, 0xff);

	/* enable AFE */
	FUNC3(afe->regmap, AFE_DAC_CON0, 0x1, 0x1);
	return 0;

err_i2s1_m:
	FUNC0(afe_priv->clocks[MT8173_CLK_I2S1_M]);
err_i2s2_m:
	FUNC0(afe_priv->clocks[MT8173_CLK_I2S2_M]);
err_bck0:
	FUNC0(afe_priv->clocks[MT8173_CLK_BCK0]);
err_top_aud:
	FUNC0(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD]);
err_top_aud_bus:
	FUNC0(afe_priv->clocks[MT8173_CLK_TOP_PDN_AUD_BUS]);
err_infra:
	FUNC0(afe_priv->clocks[MT8173_CLK_INFRASYS_AUD]);
	return ret;
}
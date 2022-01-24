#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {unsigned int pll_in; unsigned int pll_out; int regvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC5623_DAI_CONTROL ; 
 int ALC5623_DAI_SDP_SLAVE_MODE ; 
 int ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK ; 
 int ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL ; 
 int /*<<< orphan*/  ALC5623_GLOBAL_CLK_CTRL_REG ; 
 int /*<<< orphan*/  ALC5623_PLL_CTRL ; 
#define  ALC5623_PLL_FR_BCK 129 
#define  ALC5623_PLL_FR_MCLK 128 
 int /*<<< orphan*/  ALC5623_PWR_ADD2_PLL ; 
 int /*<<< orphan*/  ALC5623_PWR_MANAG_ADD2 ; 
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 TYPE_1__* codec_master_pll_div ; 
 TYPE_1__* codec_slave_pll_div ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *codec_dai, int pll_id,
		int source, unsigned int freq_in, unsigned int freq_out)
{
	int i;
	struct snd_soc_component *component = codec_dai->component;
	int gbl_clk = 0, pll_div = 0;
	u16 reg;

	if (pll_id < ALC5623_PLL_FR_MCLK || pll_id > ALC5623_PLL_FR_BCK)
		return -ENODEV;

	/* Disable PLL power */
	FUNC2(component, ALC5623_PWR_MANAG_ADD2,
				ALC5623_PWR_ADD2_PLL,
				0);

	/* pll is not used in slave mode */
	reg = FUNC1(component, ALC5623_DAI_CONTROL);
	if (reg & ALC5623_DAI_SDP_SLAVE_MODE)
		return 0;

	if (!freq_in || !freq_out)
		return 0;

	switch (pll_id) {
	case ALC5623_PLL_FR_MCLK:
		for (i = 0; i < FUNC0(codec_master_pll_div); i++) {
			if (codec_master_pll_div[i].pll_in == freq_in
			   && codec_master_pll_div[i].pll_out == freq_out) {
				/* PLL source from MCLK */
				pll_div  = codec_master_pll_div[i].regvalue;
				break;
			}
		}
		break;
	case ALC5623_PLL_FR_BCK:
		for (i = 0; i < FUNC0(codec_slave_pll_div); i++) {
			if (codec_slave_pll_div[i].pll_in == freq_in
			   && codec_slave_pll_div[i].pll_out == freq_out) {
				/* PLL source from Bitclk */
				gbl_clk = ALC5623_GBL_CLK_PLL_SOUR_SEL_BITCLK;
				pll_div = codec_slave_pll_div[i].regvalue;
				break;
			}
		}
		break;
	default:
		return -EINVAL;
	}

	if (!pll_div)
		return -EINVAL;

	FUNC3(component, ALC5623_GLOBAL_CLK_CTRL_REG, gbl_clk);
	FUNC3(component, ALC5623_PLL_CTRL, pll_div);
	FUNC2(component, ALC5623_PWR_MANAG_ADD2,
				ALC5623_PWR_ADD2_PLL,
				ALC5623_PWR_ADD2_PLL);
	gbl_clk |= ALC5623_GBL_CLK_SYS_SOUR_SEL_PLL;
	FUNC3(component, ALC5623_GLOBAL_CLK_CTRL_REG, gbl_clk);

	return 0;
}
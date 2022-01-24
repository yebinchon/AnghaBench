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
struct wcd9335_codec {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_GATE ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK ; 
 struct wcd9335_codec* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* wcd9335_codec_reg_init ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct wcd9335_codec *wcd = FUNC1(component->dev);
	int i;

	/* ungate MCLK and set clk rate */
	FUNC2(wcd->regmap, WCD9335_CODEC_RPM_CLK_GATE,
				WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK, 0);

	FUNC2(wcd->regmap, WCD9335_CODEC_RPM_CLK_MCLK_CFG,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ);

	for (i = 0; i < FUNC0(wcd9335_codec_reg_init); i++)
		FUNC3(component,
					wcd9335_codec_reg_init[i].reg,
					wcd9335_codec_reg_init[i].mask,
					wcd9335_codec_reg_init[i].val);

	FUNC4(component);
}
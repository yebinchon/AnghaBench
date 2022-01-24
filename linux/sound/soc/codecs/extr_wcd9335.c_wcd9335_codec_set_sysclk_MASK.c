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
struct wcd9335_codec {unsigned int mclk_rate; int /*<<< orphan*/  mclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG_12P288MHZ ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ ; 
 int /*<<< orphan*/  WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK ; 
 unsigned int WCD9335_MCLK_CLK_12P288MHZ ; 
 unsigned int WCD9335_MCLK_CLK_9P6MHZ ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct wcd9335_codec* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *comp,
				    int clk_id, int source,
				    unsigned int freq, int dir)
{
	struct wcd9335_codec *wcd = FUNC1(comp->dev);

	wcd->mclk_rate = freq;

	if (wcd->mclk_rate == WCD9335_MCLK_CLK_12P288MHZ)
		FUNC2(comp,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_12P288MHZ);
	else if (wcd->mclk_rate == WCD9335_MCLK_CLK_9P6MHZ)
		FUNC2(comp,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
				WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ);

	return FUNC0(wcd->mclk, freq);
}
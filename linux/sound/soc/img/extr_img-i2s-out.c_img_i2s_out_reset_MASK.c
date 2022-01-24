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
struct img_i2s_out {int max_i2s_chan; int active_channels; int /*<<< orphan*/  rst; int /*<<< orphan*/  force_clk_active; } ;

/* Variables and functions */
 int IMG_I2S_OUT_CHAN_CTL_ME_MASK ; 
 int /*<<< orphan*/  IMG_I2S_OUT_CH_CTL ; 
 int /*<<< orphan*/  IMG_I2S_OUT_CTL ; 
 int IMG_I2S_OUT_CTL_CLK_EN_MASK ; 
 int IMG_I2S_OUT_CTL_DATA_EN_MASK ; 
 int IMG_I2S_OUT_CTL_ME_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2s_out*,int) ; 
 int FUNC1 (struct img_i2s_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2s_out*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_i2s_out*) ; 
 int FUNC4 (struct img_i2s_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct img_i2s_out*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct img_i2s_out *i2s)
{
	int i;
	u32 core_ctl, chan_ctl;

	core_ctl = FUNC4(i2s, IMG_I2S_OUT_CTL) &
			~IMG_I2S_OUT_CTL_ME_MASK &
			~IMG_I2S_OUT_CTL_DATA_EN_MASK;

	if (!i2s->force_clk_active)
		core_ctl &= ~IMG_I2S_OUT_CTL_CLK_EN_MASK;

	chan_ctl = FUNC1(i2s, 0, IMG_I2S_OUT_CH_CTL) &
			~IMG_I2S_OUT_CHAN_CTL_ME_MASK;

	FUNC6(i2s->rst);
	FUNC7(i2s->rst);

	for (i = 0; i < i2s->max_i2s_chan; i++)
		FUNC2(i2s, i, chan_ctl, IMG_I2S_OUT_CH_CTL);

	for (i = 0; i < i2s->active_channels; i++)
		FUNC0(i2s, i);

	FUNC5(i2s, core_ctl, IMG_I2S_OUT_CTL);
	FUNC3(i2s);
}
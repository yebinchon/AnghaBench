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
struct i2s_clk_config_data {int chan_nr; } ;
struct dw_i2s_dev {int xfer_resolution; int fifo_th; int /*<<< orphan*/  i2s_base; struct i2s_clk_config_data config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_i2s_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct dw_i2s_dev *dev, int stream)
{
	u32 ch_reg;
	struct i2s_clk_config_data *config = &dev->config;


	FUNC6(dev, stream);

	for (ch_reg = 0; ch_reg < (config->chan_nr / 2); ch_reg++) {
		if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
			FUNC7(dev->i2s_base, FUNC3(ch_reg),
				      dev->xfer_resolution);
			FUNC7(dev->i2s_base, FUNC5(ch_reg),
				      dev->fifo_th - 1);
			FUNC7(dev->i2s_base, FUNC4(ch_reg), 1);
		} else {
			FUNC7(dev->i2s_base, FUNC0(ch_reg),
				      dev->xfer_resolution);
			FUNC7(dev->i2s_base, FUNC2(ch_reg),
				      dev->fifo_th - 1);
			FUNC7(dev->i2s_base, FUNC1(ch_reg), 1);
		}

	}
}
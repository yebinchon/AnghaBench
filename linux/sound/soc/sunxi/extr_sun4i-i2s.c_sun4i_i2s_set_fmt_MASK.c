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
struct sun4i_i2s {unsigned int format; int /*<<< orphan*/  regmap; TYPE_1__* variant; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* set_fmt ) (struct sun4i_i2s*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_I2S_FIFO_CTRL_REG ; 
 int FUNC0 (int) ; 
 int SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK ; 
 int FUNC1 (int) ; 
 int SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct sun4i_i2s* FUNC4 (struct snd_soc_dai*) ; 
 int FUNC5 (struct sun4i_i2s*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct sun4i_i2s *i2s = FUNC4(dai);
	int ret;

	ret = i2s->variant->set_fmt(i2s, fmt);
	if (ret) {
		FUNC2(dai->dev, "Unsupported format configuration\n");
		return ret;
	}

	/* Set significant bits in our FIFOs */
	FUNC3(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
			   SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK |
			   SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK,
			   FUNC1(1) |
			   FUNC0(1));

	i2s->format = fmt;

	return 0;
}
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
struct sun4i_i2s {int /*<<< orphan*/  regmap; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_I2S_CHAN_SEL_MASK ; 
 int /*<<< orphan*/  SUN4I_I2S_RX_CHAN_MAP_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_RX_CHAN_SEL_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_TX_CHAN_MAP_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_TX_CHAN_SEL_REG ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(const struct sun4i_i2s *i2s,
				  const struct snd_pcm_hw_params *params)
{
	unsigned int channels = FUNC1(params);

	/* Map the channels for playback and capture */
	FUNC3(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, 0x76543210);
	FUNC3(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);

	/* Configure the channels */
	FUNC2(i2s->regmap, SUN4I_I2S_TX_CHAN_SEL_REG,
			   SUN4I_I2S_CHAN_SEL_MASK,
			   FUNC0(channels));
	FUNC2(i2s->regmap, SUN4I_I2S_RX_CHAN_SEL_REG,
			   SUN4I_I2S_CHAN_SEL_MASK,
			   FUNC0(channels));

	return 0;
}
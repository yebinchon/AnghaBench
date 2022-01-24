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
struct snd_soc_component {int dummy; } ;
struct pcm1681_private {scalar_t__ rate; int /*<<< orphan*/  regmap; scalar_t__ deemph; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  PCM1681_DEEMPH_CONTROL ; 
 int /*<<< orphan*/  PCM1681_DEEMPH_MASK ; 
 int /*<<< orphan*/  PCM1681_DEEMPH_RATE_MASK ; 
 scalar_t__* pcm1681_deemph ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcm1681_private* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct pcm1681_private *priv = FUNC2(component);
	int i = 0, val = -1, enable = 0;

	if (priv->deemph) {
		for (i = 0; i < FUNC0(pcm1681_deemph); i++) {
			if (pcm1681_deemph[i] == priv->rate) {
				val = i;
				break;
			}
		}
	}

	if (val != -1) {
		FUNC1(priv->regmap, PCM1681_DEEMPH_CONTROL,
				   PCM1681_DEEMPH_RATE_MASK, val << 3);
		enable = 1;
	} else {
		enable = 0;
	}

	/* enable/disable deemphasis functionality */
	return FUNC1(priv->regmap, PCM1681_DEEMPH_CONTROL,
					PCM1681_DEEMPH_MASK, enable);
}
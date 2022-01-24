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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 struct madera_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_dai *dai,
					unsigned int base,
					int channels, unsigned int mask)
{
	struct snd_soc_component *component = dai->component;
	struct madera_priv *priv = FUNC3(component);
	struct madera *madera = priv->madera;
	int slot, i;

	for (i = 0; i < channels; ++i) {
		slot = FUNC0(mask) - 1;
		if (slot < 0)
			return;

		FUNC2(madera->regmap, base + i, slot);

		mask &= ~(1 << slot);
	}

	if (mask)
		FUNC1(dai, "Too many channels in TDM mask\n");
}
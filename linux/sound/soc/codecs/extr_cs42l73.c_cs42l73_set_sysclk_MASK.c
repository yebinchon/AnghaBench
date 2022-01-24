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
struct snd_soc_dai {int /*<<< orphan*/  name; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct cs42l73_private {int mclksel; } ;

/* Variables and functions */
#define  CS42L73_CLKID_MCLK1 129 
#define  CS42L73_CLKID_MCLK2 128 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct snd_soc_dai*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cs42l73_private* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
			      int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct cs42l73_private *priv = FUNC2(component);

	switch (clk_id) {
	case CS42L73_CLKID_MCLK1:
		break;
	case CS42L73_CLKID_MCLK2:
		break;
	default:
		return -EINVAL;
	}

	if ((FUNC0(dai, freq)) < 0) {
		FUNC1(component->dev, "Unable to set MCLK for dai %s\n",
			dai->name);
		return -EINVAL;
	}

	priv->mclksel = clk_id;

	return 0;
}
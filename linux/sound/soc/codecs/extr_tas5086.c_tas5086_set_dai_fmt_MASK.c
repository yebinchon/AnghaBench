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
struct tas5086_private {unsigned int format; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct tas5086_private* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
			       unsigned int format)
{
	struct snd_soc_component *component = codec_dai->component;
	struct tas5086_private *priv = FUNC1(component);

	/* The TAS5086 can only be slave to all clocks */
	if ((format & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS) {
		FUNC0(component->dev, "Invalid clocking mode\n");
		return -EINVAL;
	}

	/* we need to refer to the data format from hw_params() */
	priv->format = format;

	return 0;
}
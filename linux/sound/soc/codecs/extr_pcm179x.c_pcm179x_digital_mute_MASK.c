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
struct pcm179x_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM179X_MUTE_MASK ; 
 int /*<<< orphan*/  PCM179X_SOFT_MUTE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcm179x_private* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	struct pcm179x_private *priv = FUNC1(component);
	int ret;

	ret = FUNC0(priv->regmap, PCM179X_SOFT_MUTE,
				 PCM179X_MUTE_MASK, !!mute);
	if (ret < 0)
		return ret;

	return 0;
}
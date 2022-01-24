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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct pcm512x_priv {int mute; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM512x_ANALOG_MUTE_DET ; 
 int /*<<< orphan*/  PCM512x_MUTE ; 
 int PCM512x_RQML ; 
 int PCM512x_RQMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcm512x_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct pcm512x_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC6(component);
	int ret;
	unsigned int mute_det;

	FUNC1(&pcm512x->mutex);

	if (mute) {
		pcm512x->mute |= 0x1;
		ret = FUNC5(pcm512x->regmap, PCM512x_MUTE,
					 PCM512x_RQML | PCM512x_RQMR,
					 PCM512x_RQML | PCM512x_RQMR);
		if (ret != 0) {
			FUNC0(component->dev,
				"Failed to set digital mute: %d\n", ret);
			goto unlock;
		}

		FUNC4(pcm512x->regmap,
					 PCM512x_ANALOG_MUTE_DET,
					 mute_det, (mute_det & 0x3) == 0,
					 200, 10000);
	} else {
		pcm512x->mute &= ~0x1;
		ret = FUNC3(pcm512x);
		if (ret != 0) {
			FUNC0(component->dev,
				"Failed to update digital mute: %d\n", ret);
			goto unlock;
		}

		FUNC4(pcm512x->regmap,
					 PCM512x_ANALOG_MUTE_DET,
					 mute_det,
					 (mute_det & 0x3)
					 == ((~pcm512x->mute >> 1) & 0x3),
					 200, 10000);
	}

unlock:
	FUNC2(&pcm512x->mutex);

	return ret;
}
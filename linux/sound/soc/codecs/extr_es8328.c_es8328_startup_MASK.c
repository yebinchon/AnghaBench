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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct es8328_priv {scalar_t__ sysclk_constraints; scalar_t__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct es8328_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			  struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct es8328_priv *es8328 = FUNC1(component);

	if (es8328->master && es8328->sysclk_constraints)
		FUNC0(substream->runtime, 0,
				SNDRV_PCM_HW_PARAM_RATE,
				es8328->sysclk_constraints);

	return 0;
}
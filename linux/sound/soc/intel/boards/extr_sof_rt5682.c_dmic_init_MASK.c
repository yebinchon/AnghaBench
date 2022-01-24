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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  dmic_map ; 
 int /*<<< orphan*/  dmic_widgets ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;
	int ret;

	ret = FUNC3(&card->dapm, dmic_widgets,
					FUNC0(dmic_widgets));
	if (ret) {
		FUNC1(card->dev, "DMic widget addition failed: %d\n", ret);
		/* Don't need to add routes if widget addition failed */
		return ret;
	}

	ret = FUNC2(&card->dapm, dmic_map,
				      FUNC0(dmic_map));

	if (ret)
		FUNC1(card->dev, "DMic map addition failed: %d\n", ret);

	return ret;
}
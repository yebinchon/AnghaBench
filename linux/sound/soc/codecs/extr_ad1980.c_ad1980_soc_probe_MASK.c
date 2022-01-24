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
typedef  int u16 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_ac97 {int dummy; } ;
typedef  struct snd_ac97 regmap ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CENTER_LFE_MASTER ; 
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 int /*<<< orphan*/  AC97_MASTER ; 
 int /*<<< orphan*/  AC97_PCM ; 
 int /*<<< orphan*/  AC97_REC_GAIN ; 
 int /*<<< orphan*/  AC97_SURROUND_MASTER ; 
 int /*<<< orphan*/  AC97_VENDOR_ID2 ; 
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 int FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  ad1980_regmap_config ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct snd_ac97* FUNC5 (struct snd_ac97*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,struct snd_ac97*) ; 
 int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_ac97*) ; 
 struct snd_ac97* FUNC12 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component)
{
	struct snd_ac97 *ac97;
	struct regmap *regmap;
	int ret;
	u16 vendor_id2;
	u16 ext_status;

	ac97 = FUNC12(component, 0, 0);
	if (FUNC0(ac97)) {
		ret = FUNC1(ac97);
		FUNC3(component->dev, "Failed to register AC97 component: %d\n", ret);
		return ret;
	}

	regmap = FUNC5(ac97, &ad1980_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		goto err_free_ac97;
	}

	FUNC7(component, regmap);
	FUNC9(component, ac97);

	ret = FUNC2(component, 0);
	if (ret < 0)
		goto reset_err;

	vendor_id2 = FUNC8(component, AC97_VENDOR_ID2);
	if (vendor_id2 == 0x5374) {
		FUNC4(component->dev,
			"Found AD1981 - only 2/2 IN/OUT Channels supported\n");
	}

	/* unmute captures and playbacks volume */
	FUNC10(component, AC97_MASTER, 0x0000);
	FUNC10(component, AC97_PCM, 0x0000);
	FUNC10(component, AC97_REC_GAIN, 0x0000);
	FUNC10(component, AC97_CENTER_LFE_MASTER, 0x0000);
	FUNC10(component, AC97_SURROUND_MASTER, 0x0000);

	/*power on LFE/CENTER/Surround DACs*/
	ext_status = FUNC8(component, AC97_EXTENDED_STATUS);
	FUNC10(component, AC97_EXTENDED_STATUS, ext_status&~0x3800);

	return 0;

reset_err:
	FUNC6(component);
err_free_ac97:
	FUNC11(ac97);
	return ret;
}
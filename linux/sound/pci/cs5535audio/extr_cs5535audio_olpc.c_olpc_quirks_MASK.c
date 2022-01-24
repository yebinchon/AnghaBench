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
struct snd_ctl_elem_id {int /*<<< orphan*/  name; void* iface; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;
struct snd_ac97 {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  elem ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 int /*<<< orphan*/  OLPC_GPIO_MIC_AC ; 
 void* SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * olpc_cs5535audio_ctls ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC12(struct snd_card *card, struct snd_ac97 *ac97)
{
	struct snd_ctl_elem_id elem;
	int i, err;

	if (!FUNC5())
		return 0;

	if (FUNC4(OLPC_GPIO_MIC_AC, DRV_NAME)) {
		FUNC1(card->dev, "unable to allocate MIC GPIO\n");
		return -EIO;
	}
	FUNC2(OLPC_GPIO_MIC_AC, 0);

	/* drop the original AD1888 HPF control */
	FUNC6(&elem, 0, sizeof(elem));
	elem.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	FUNC11(elem.name, "High Pass Filter Enable", sizeof(elem.name));
	FUNC10(card, &elem);

	/* drop the original V_REFOUT control */
	FUNC6(&elem, 0, sizeof(elem));
	elem.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	FUNC11(elem.name, "V_REFOUT Enable", sizeof(elem.name));
	FUNC10(card, &elem);

	/* add the OLPC-specific controls */
	for (i = 0; i < FUNC0(olpc_cs5535audio_ctls); i++) {
		err = FUNC8(card, FUNC9(&olpc_cs5535audio_ctls[i],
				ac97->private_data));
		if (err < 0) {
			FUNC3(OLPC_GPIO_MIC_AC);
			return err;
		}
	}

	/* turn off the mic by default */
	FUNC7(ac97, 0);
	return 0;
}
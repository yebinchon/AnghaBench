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
typedef  int u8 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int TWL4030_AIF_EN ; 
 int /*<<< orphan*/  TWL4030_REG_AUDIO_IF ; 
 struct snd_soc_component* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		     struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC0(w->dapm);
	u8 audio_if;

	audio_if = FUNC2(component, TWL4030_REG_AUDIO_IF);
	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Enable AIF */
		/* enable the PLL before we use it to clock the DAI */
		FUNC1(component, 1);

		FUNC3(component, TWL4030_REG_AUDIO_IF,
			      audio_if | TWL4030_AIF_EN);
		break;
	case SND_SOC_DAPM_POST_PMD:
		/* disable the DAI before we stop it's source PLL */
		FUNC3(component, TWL4030_REG_AUDIO_IF,
			      audio_if &  ~TWL4030_AIF_EN);
		FUNC1(component, 0);
		break;
	}
	return 0;
}
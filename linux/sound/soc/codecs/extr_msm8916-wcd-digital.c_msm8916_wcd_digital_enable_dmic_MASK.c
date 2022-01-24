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
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3 ; 
 int /*<<< orphan*/  DMIC_B1_CTL_DMIC0_CLK_SEL_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  LPASS_CDC_CLK_DMIC_B1_CTL ; 
 int /*<<< orphan*/  LPASS_CDC_TX1_DMIC_CTL ; 
 int /*<<< orphan*/  LPASS_CDC_TX2_DMIC_CTL ; 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  TXN_DMIC_CTL_CLK_SEL_DIV3 ; 
 int /*<<< orphan*/  TXN_DMIC_CTL_CLK_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
					   struct snd_kcontrol *kcontrol,
					   int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	unsigned int dmic;
	int ret;
	/* get dmic number out of widget name */
	char *dmic_num = FUNC4(w->name, "12");

	if (dmic_num == NULL) {
		FUNC0(component->dev, "Invalid DMIC\n");
		return -EINVAL;
	}
	ret = FUNC1(dmic_num, 10, &dmic);
	if (ret < 0 || dmic > 2) {
		FUNC0(component->dev, "Invalid DMIC line on the component\n");
		return -EINVAL;
	}

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC2(component, LPASS_CDC_CLK_DMIC_B1_CTL,
				    DMIC_B1_CTL_DMIC0_CLK_SEL_MASK,
				    DMIC_B1_CTL_DMIC0_CLK_SEL_DIV3);
		switch (dmic) {
		case 1:
			FUNC2(component, LPASS_CDC_TX1_DMIC_CTL,
					    TXN_DMIC_CTL_CLK_SEL_MASK,
					    TXN_DMIC_CTL_CLK_SEL_DIV3);
			break;
		case 2:
			FUNC2(component, LPASS_CDC_TX2_DMIC_CTL,
					    TXN_DMIC_CTL_CLK_SEL_MASK,
					    TXN_DMIC_CTL_CLK_SEL_DIV3);
			break;
		}
		break;
	}

	return 0;
}
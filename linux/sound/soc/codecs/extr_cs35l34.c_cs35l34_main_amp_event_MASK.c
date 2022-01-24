#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  boost_vtge; } ;
struct cs35l34_private {int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L34_BST_CVTL_MASK ; 
 int /*<<< orphan*/  CS35L34_BST_CVTR_V_CTL ; 
 int /*<<< orphan*/  CS35L34_MUTE ; 
 int /*<<< orphan*/  CS35L34_PROTECT_CTL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs35l34_private* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct cs35l34_private *priv = FUNC2(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC1(priv->regmap, CS35L34_BST_CVTR_V_CTL,
				CS35L34_BST_CVTL_MASK, priv->pdata.boost_vtge);
		FUNC4(5000, 5100);
		FUNC1(priv->regmap, CS35L34_PROTECT_CTL,
						CS35L34_MUTE, 0);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC1(priv->regmap, CS35L34_BST_CVTR_V_CTL,
			CS35L34_BST_CVTL_MASK, 0);
		FUNC1(priv->regmap, CS35L34_PROTECT_CTL,
			CS35L34_MUTE, CS35L34_MUTE);
		FUNC4(5000, 5100);
		break;
	default:
		FUNC0("Invalid event = 0x%x\n", event);
	}
	return 0;
}
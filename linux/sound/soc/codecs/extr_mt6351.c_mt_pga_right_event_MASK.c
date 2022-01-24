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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  regmap; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT6351_AUDENC_ANA_CON1 ; 
 int RG_AUDPREAMPRDCCEN ; 
 int RG_AUDPREAMPRDCPRECHARGE ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			      struct snd_kcontrol *kcontrol,
			      int event)
{
	struct snd_soc_component *cmpnt = FUNC1(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Audio R PGA precharge on */
		FUNC0(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
				   0x3 << RG_AUDPREAMPRDCPRECHARGE,
				   0x1 << RG_AUDPREAMPRDCPRECHARGE);
		/* Audio R PGA mode: 1_DCC */
		FUNC0(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
				   0x3 << RG_AUDPREAMPRDCCEN,
				   0x1 << RG_AUDPREAMPRDCCEN);
		break;
	case SND_SOC_DAPM_POST_PMU:
		FUNC2(100, 120);
		/* Audio R PGA precharge off */
		FUNC0(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
				   0x3 << RG_AUDPREAMPRDCPRECHARGE,
				   0x0 << RG_AUDPREAMPRDCPRECHARGE);
		break;
	default:
		break;
	}
	return 0;
}
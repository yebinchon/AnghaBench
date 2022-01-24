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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT1308_POWER_STATUS ; 
 int RT1308_POW_PDB_MN_BIT ; 
 int RT1308_POW_PDB_REG_BIT ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC2(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC0(30);
		FUNC1(component, RT1308_POWER_STATUS,
			RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT,
			RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT);
		FUNC0(40);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC1(component, RT1308_POWER_STATUS,
			RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT, 0);
		FUNC3(150000, 200000);
		break;

	default:
		break;
	}

	return 0;
}
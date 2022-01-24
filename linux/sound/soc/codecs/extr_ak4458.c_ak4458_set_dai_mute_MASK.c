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
struct ak4458_priv {int fs; scalar_t__ mute_gpiod; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4458_01_CONTROL2 ; 
 int /*<<< orphan*/  AK4458_0B_CONTROL7 ; 
 int AK4458_ATS_MASK ; 
 int AK4458_ATS_SHIFT ; 
 int* att_speed ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ak4458_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	struct ak4458_priv *ak4458 = FUNC2(component);
	int nfs, ndt, ret, reg;
	int ats;

	nfs = ak4458->fs;

	reg = FUNC3(component, AK4458_0B_CONTROL7);
	ats = (reg & AK4458_ATS_MASK) >> AK4458_ATS_SHIFT;

	ndt = att_speed[ats] / (nfs / 1000);

	if (mute) {
		ret = FUNC4(component, AK4458_01_CONTROL2,  0x01, 1);
		FUNC1(ndt);
		if (ak4458->mute_gpiod)
			FUNC0(ak4458->mute_gpiod, 1);
	} else {
		if (ak4458->mute_gpiod)
			FUNC0(ak4458->mute_gpiod, 0);
		ret = FUNC4(component, AK4458_01_CONTROL2, 0x01, 0);
		FUNC1(ndt);
	}

	return 0;
}
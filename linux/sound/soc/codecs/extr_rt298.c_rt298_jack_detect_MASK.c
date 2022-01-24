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
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ cbj_en; } ;
struct rt298_priv {int is_hp_in; int /*<<< orphan*/  regmap; TYPE_1__ pdata; int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT298_CBJ_CTRL1 ; 
 int /*<<< orphan*/  RT298_CBJ_CTRL2 ; 
 int /*<<< orphan*/  RT298_DC_GAIN ; 
 int /*<<< orphan*/  RT298_GET_HP_SENSE ; 
 int /*<<< orphan*/  RT298_GET_MIC1_SENSE ; 
 int /*<<< orphan*/  RT298_POWER_CTRL1 ; 
 int /*<<< orphan*/  RT298_POWER_CTRL2 ; 
 int /*<<< orphan*/  RT298_SET_MIC1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC9(struct rt298_priv *rt298, bool *hp, bool *mic)
{
	struct snd_soc_dapm_context *dapm;
	unsigned int val, buf;

	*hp = false;
	*mic = false;

	if (!rt298->component)
		return -EINVAL;

	dapm = FUNC5(rt298->component);

	if (rt298->pdata.cbj_en) {
		FUNC2(rt298->regmap, RT298_GET_HP_SENSE, &buf);
		*hp = buf & 0x80000000;
		if (*hp == rt298->is_hp_in)
			return -1;
		rt298->is_hp_in = *hp;
		if (*hp) {
			/* power on HV,VERF */
			FUNC3(rt298->regmap,
				RT298_DC_GAIN, 0x200, 0x200);

			FUNC7(dapm, "HV");
			FUNC7(dapm, "VREF");
			/* power LDO1 */
			FUNC7(dapm, "LDO1");
			FUNC8(dapm);

			FUNC3(rt298->regmap,
				RT298_POWER_CTRL1, 0x1001, 0);
			FUNC3(rt298->regmap,
				RT298_POWER_CTRL2, 0x4, 0x4);

			FUNC4(rt298->regmap, RT298_SET_MIC1, 0x24);
			FUNC0(50);

			FUNC3(rt298->regmap,
				RT298_CBJ_CTRL1, 0xfcc0, 0xd400);
			FUNC0(300);
			FUNC2(rt298->regmap, RT298_CBJ_CTRL2, &val);

			if (0x0070 == (val & 0x0070)) {
				*mic = true;
			} else {
				FUNC3(rt298->regmap,
					RT298_CBJ_CTRL1, 0xfcc0, 0xe400);
				FUNC0(300);
				FUNC2(rt298->regmap,
					RT298_CBJ_CTRL2, &val);
				if (0x0070 == (val & 0x0070))
					*mic = true;
				else
					*mic = false;
			}
			FUNC3(rt298->regmap,
				RT298_DC_GAIN, 0x200, 0x0);

		} else {
			*mic = false;
			FUNC4(rt298->regmap, RT298_SET_MIC1, 0x20);
			FUNC3(rt298->regmap,
				RT298_CBJ_CTRL1, 0x0400, 0x0000);
		}
	} else {
		FUNC2(rt298->regmap, RT298_GET_HP_SENSE, &buf);
		*hp = buf & 0x80000000;
		FUNC2(rt298->regmap, RT298_GET_MIC1_SENSE, &buf);
		*mic = buf & 0x80000000;
	}
	if (!*mic) {
		FUNC6(dapm, "HV");
		FUNC6(dapm, "VREF");
	}
	if (!*hp)
		FUNC6(dapm, "LDO1");
	FUNC8(dapm);

	FUNC1("*hp = %d *mic = %d\n", *hp, *mic);

	return 0;
}
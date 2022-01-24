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
struct rt286_priv {int /*<<< orphan*/  regmap; TYPE_1__ pdata; int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT286_CBJ_CTRL1 ; 
 int /*<<< orphan*/  RT286_CBJ_CTRL2 ; 
 int /*<<< orphan*/  RT286_DC_GAIN ; 
 int /*<<< orphan*/  RT286_GET_HP_SENSE ; 
 int /*<<< orphan*/  RT286_GET_MIC1_SENSE ; 
 int /*<<< orphan*/  RT286_SET_MIC1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC8(struct rt286_priv *rt286, bool *hp, bool *mic)
{
	struct snd_soc_dapm_context *dapm;
	unsigned int val, buf;

	*hp = false;
	*mic = false;

	if (!rt286->component)
		return -EINVAL;

	dapm = FUNC4(rt286->component);

	if (rt286->pdata.cbj_en) {
		FUNC1(rt286->regmap, RT286_GET_HP_SENSE, &buf);
		*hp = buf & 0x80000000;
		if (*hp) {
			/* power on HV,VERF */
			FUNC2(rt286->regmap,
				RT286_DC_GAIN, 0x200, 0x200);

			FUNC6(dapm, "HV");
			FUNC6(dapm, "VREF");
			/* power LDO1 */
			FUNC6(dapm, "LDO1");
			FUNC7(dapm);

			FUNC3(rt286->regmap, RT286_SET_MIC1, 0x24);
			FUNC0(50);

			FUNC2(rt286->regmap,
				RT286_CBJ_CTRL1, 0xfcc0, 0xd400);
			FUNC0(300);
			FUNC1(rt286->regmap, RT286_CBJ_CTRL2, &val);

			if (0x0070 == (val & 0x0070)) {
				*mic = true;
			} else {
				FUNC2(rt286->regmap,
					RT286_CBJ_CTRL1, 0xfcc0, 0xe400);
				FUNC0(300);
				FUNC1(rt286->regmap,
					RT286_CBJ_CTRL2, &val);
				if (0x0070 == (val & 0x0070))
					*mic = true;
				else
					*mic = false;
			}
			FUNC2(rt286->regmap,
				RT286_DC_GAIN, 0x200, 0x0);

		} else {
			*mic = false;
			FUNC3(rt286->regmap, RT286_SET_MIC1, 0x20);
			FUNC2(rt286->regmap,
				RT286_CBJ_CTRL1, 0x0400, 0x0000);
		}
	} else {
		FUNC1(rt286->regmap, RT286_GET_HP_SENSE, &buf);
		*hp = buf & 0x80000000;
		FUNC1(rt286->regmap, RT286_GET_MIC1_SENSE, &buf);
		*mic = buf & 0x80000000;
	}
	if (!*mic) {
		FUNC5(dapm, "HV");
		FUNC5(dapm, "VREF");
	}
	if (!*hp)
		FUNC5(dapm, "LDO1");
	FUNC7(dapm);

	return 0;
}
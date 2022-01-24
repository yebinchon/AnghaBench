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
struct snd_soc_component {int dummy; } ;
struct rt5668_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int RT5668_DIG_GATE_CTRL ; 
 int /*<<< orphan*/  RT5668_PWR_ANLG_1 ; 
 int RT5668_PWR_BG ; 
 int /*<<< orphan*/  RT5668_PWR_DIG_1 ; 
 int RT5668_PWR_LDO ; 
 int RT5668_PWR_MB ; 
#define  SND_SOC_BIAS_OFF 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct rt5668_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5668_priv *rt5668 = FUNC1(component);

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		FUNC0(rt5668->regmap, RT5668_PWR_ANLG_1,
			RT5668_PWR_MB | RT5668_PWR_BG,
			RT5668_PWR_MB | RT5668_PWR_BG);
		FUNC0(rt5668->regmap, RT5668_PWR_DIG_1,
			RT5668_DIG_GATE_CTRL | RT5668_PWR_LDO,
			RT5668_DIG_GATE_CTRL | RT5668_PWR_LDO);
		break;

	case SND_SOC_BIAS_STANDBY:
		FUNC0(rt5668->regmap, RT5668_PWR_ANLG_1,
			RT5668_PWR_MB, RT5668_PWR_MB);
		FUNC0(rt5668->regmap, RT5668_PWR_DIG_1,
			RT5668_DIG_GATE_CTRL, RT5668_DIG_GATE_CTRL);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC0(rt5668->regmap, RT5668_PWR_DIG_1,
			RT5668_DIG_GATE_CTRL | RT5668_PWR_LDO, 0);
		FUNC0(rt5668->regmap, RT5668_PWR_ANLG_1,
			RT5668_PWR_MB | RT5668_PWR_BG, 0);
		break;

	default:
		break;
	}

	return 0;
}
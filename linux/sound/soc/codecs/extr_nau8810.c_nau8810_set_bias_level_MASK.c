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
struct regmap {int dummy; } ;
struct nau8810 {struct regmap* regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int NAU8810_ABIAS_EN ; 
 int NAU8810_IOBUF_EN ; 
 int NAU8810_REFIMP_300K ; 
 int NAU8810_REFIMP_3K ; 
 int NAU8810_REFIMP_80K ; 
 int NAU8810_REFIMP_MASK ; 
 int /*<<< orphan*/  NAU8810_REG_POWER1 ; 
 int /*<<< orphan*/  NAU8810_REG_POWER2 ; 
 int /*<<< orphan*/  NAU8810_REG_POWER3 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 struct nau8810* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	struct nau8810 *nau8810 = FUNC5(component);
	struct regmap *map = nau8810->regmap;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		FUNC2(map, NAU8810_REG_POWER1,
			NAU8810_REFIMP_MASK, NAU8810_REFIMP_80K);
		break;

	case SND_SOC_BIAS_STANDBY:
		FUNC2(map, NAU8810_REG_POWER1,
			NAU8810_IOBUF_EN | NAU8810_ABIAS_EN,
			NAU8810_IOBUF_EN | NAU8810_ABIAS_EN);

		if (FUNC4(component) == SND_SOC_BIAS_OFF) {
			FUNC1(map);
			FUNC2(map, NAU8810_REG_POWER1,
				NAU8810_REFIMP_MASK, NAU8810_REFIMP_3K);
			FUNC0(100);
		}
		FUNC2(map, NAU8810_REG_POWER1,
			NAU8810_REFIMP_MASK, NAU8810_REFIMP_300K);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC3(map, NAU8810_REG_POWER1, 0);
		FUNC3(map, NAU8810_REG_POWER2, 0);
		FUNC3(map, NAU8810_REG_POWER3, 0);
		break;
	}

	return 0;
}
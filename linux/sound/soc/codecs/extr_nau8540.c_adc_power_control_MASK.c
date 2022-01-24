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
struct nau8540 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8540_I2S_DO12_TRI ; 
 int /*<<< orphan*/  NAU8540_I2S_DO34_TRI ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL1 ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL2 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nau8540* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *k, int  event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct nau8540 *nau8540 = FUNC4(component);

	if (FUNC1(event)) {
		FUNC2(300);
		/* DO12 and DO34 pad output enable */
		FUNC3(nau8540->regmap, NAU8540_REG_PCM_CTRL1,
			NAU8540_I2S_DO12_TRI, 0);
		FUNC3(nau8540->regmap, NAU8540_REG_PCM_CTRL2,
			NAU8540_I2S_DO34_TRI, 0);
	} else if (FUNC0(event)) {
		FUNC3(nau8540->regmap, NAU8540_REG_PCM_CTRL1,
			NAU8540_I2S_DO12_TRI, NAU8540_I2S_DO12_TRI);
		FUNC3(nau8540->regmap, NAU8540_REG_PCM_CTRL2,
			NAU8540_I2S_DO34_TRI, NAU8540_I2S_DO34_TRI);
	}
	return 0;
}
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
 int /*<<< orphan*/  NAU8540_REG_RST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nau8540* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *k, int  event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct nau8540 *nau8540 = FUNC2(component);

	if (FUNC0(event)) {
		FUNC1(nau8540->regmap, NAU8540_REG_RST, 0x0001);
		FUNC1(nau8540->regmap, NAU8540_REG_RST, 0x0000);
	}
	return 0;
}
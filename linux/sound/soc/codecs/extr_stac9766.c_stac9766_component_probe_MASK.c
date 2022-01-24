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
struct snd_ac97 {int dummy; } ;
typedef  struct snd_ac97 regmap ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 int FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  STAC9766_VENDOR_ID ; 
 int /*<<< orphan*/  STAC9766_VENDOR_ID_MASK ; 
 struct snd_ac97* FUNC2 (struct snd_ac97*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ac97*) ; 
 struct snd_ac97* FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac9766_regmap_config ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct snd_ac97 *ac97;
	struct regmap *regmap;
	int ret;

	ac97 = FUNC6(component, STAC9766_VENDOR_ID,
			STAC9766_VENDOR_ID_MASK);
	if (FUNC0(ac97))
		return FUNC1(ac97);

	regmap = FUNC2(ac97, &stac9766_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		goto err_free_ac97;
	}

	FUNC3(component, regmap);
	FUNC4(component, ac97);

	return 0;
err_free_ac97:
	FUNC5(ac97);
	return ret;
}
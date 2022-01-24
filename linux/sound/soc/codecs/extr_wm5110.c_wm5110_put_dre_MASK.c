#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct soc_mixer_control {int shift; int rshift; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_DRE_ENABLE ; 
 int /*<<< orphan*/  ARIZONA_OUTPUT_ENABLES_1 ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct arizona* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC7 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC8 (struct arizona*,int) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC7(kcontrol);
	struct snd_soc_dapm_context *dapm = FUNC4(component);
	struct arizona *arizona = FUNC1(component->dev->parent);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int ena, dre;
	unsigned int mask = (0x1 << mc->shift) | (0x1 << mc->rshift);
	unsigned int lnew = (!!ucontrol->value.integer.value[0]) << mc->shift;
	unsigned int rnew = (!!ucontrol->value.integer.value[1]) << mc->rshift;
	unsigned int lold, rold;
	unsigned int lena, rena;
	int ret;

	FUNC5(dapm);

	ret = FUNC2(arizona->regmap, ARIZONA_OUTPUT_ENABLES_1, &ena);
	if (ret) {
		FUNC0(arizona->dev, "Failed to read output state: %d\n", ret);
		goto err;
	}
	ret = FUNC2(arizona->regmap, ARIZONA_DRE_ENABLE, &dre);
	if (ret) {
		FUNC0(arizona->dev, "Failed to read DRE state: %d\n", ret);
		goto err;
	}

	lold = dre & (1 << mc->shift);
	rold = dre & (1 << mc->rshift);
	/* Enables are channel wise swapped from the DRE enables */
	lena = ena & (1 << mc->rshift);
	rena = ena & (1 << mc->shift);

	if ((lena && lnew != lold) || (rena && rnew != rold)) {
		FUNC0(arizona->dev, "Can't change DRE on active outputs\n");
		ret = -EBUSY;
		goto err;
	}

	ret = FUNC3(arizona->regmap, ARIZONA_DRE_ENABLE,
				 mask, lnew | rnew);
	if (ret) {
		FUNC0(arizona->dev, "Failed to set DRE: %d\n", ret);
		goto err;
	}

	/* Force reset of PGA volumes, if turning DRE off */
	if (!lnew && lold)
		FUNC8(arizona, mc->shift);

	if (!rnew && rold)
		FUNC8(arizona, mc->rshift);

err:
	FUNC6(dapm);

	return ret;
}
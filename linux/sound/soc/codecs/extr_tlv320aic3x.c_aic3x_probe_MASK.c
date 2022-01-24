#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct aic3x_priv {int model; int micbias_vg; TYPE_2__* setup; int /*<<< orphan*/  regmap; TYPE_1__* disable_nb; TYPE_3__* supplies; struct snd_soc_component* component; } ;
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_11__ {int /*<<< orphan*/  consumer; } ;
struct TYPE_10__ {int* gpio_func; } ;
struct TYPE_9__ {TYPE_4__ nb; struct aic3x_priv* aic3x; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC3X_GPIO1_REG ; 
 int /*<<< orphan*/  AIC3X_GPIO2_REG ; 
#define  AIC3X_MICBIAS_2_0V 135 
#define  AIC3X_MICBIAS_2_5V 134 
#define  AIC3X_MICBIAS_AVDDV 133 
#define  AIC3X_MICBIAS_OFF 132 
#define  AIC3X_MODEL_3007 131 
#define  AIC3X_MODEL_3104 130 
#define  AIC3X_MODEL_33 129 
#define  AIC3X_MODEL_3X 128 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  MICBIAS_CTRL ; 
 int /*<<< orphan*/  MICBIAS_LEVEL_MASK ; 
 int MICBIAS_LEVEL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 TYPE_3__ aic3x_classd_amp_gain_ctrl ; 
 TYPE_3__* aic3x_extra_snd_controls ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 TYPE_3__* aic3x_mono_controls ; 
 int /*<<< orphan*/  aic3x_regulator_event ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,TYPE_3__*,int) ; 
 struct aic3x_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component)
{
	struct aic3x_priv *aic3x = FUNC8(component);
	int ret, i;

	aic3x->component = component;

	for (i = 0; i < FUNC0(aic3x->supplies); i++) {
		aic3x->disable_nb[i].nb.notifier_call = aic3x_regulator_event;
		aic3x->disable_nb[i].aic3x = aic3x;
		ret = FUNC5(
						aic3x->supplies[i].consumer,
						&aic3x->disable_nb[i].nb);
		if (ret) {
			FUNC3(component->dev,
				"Failed to request regulator notifier: %d\n",
				 ret);
			return ret;
		}
	}

	FUNC6(aic3x->regmap);
	FUNC2(component);

	if (aic3x->setup) {
		if (aic3x->model != AIC3X_MODEL_3104) {
			/* setup GPIO functions */
			FUNC10(component, AIC3X_GPIO1_REG,
				      (aic3x->setup->gpio_func[0] & 0xf) << 4);
			FUNC10(component, AIC3X_GPIO2_REG,
				      (aic3x->setup->gpio_func[1] & 0xf) << 4);
		} else {
			FUNC4(component->dev, "GPIO functionality is not supported on tlv320aic3104\n");
		}
	}

	switch (aic3x->model) {
	case AIC3X_MODEL_3X:
	case AIC3X_MODEL_33:
		FUNC7(component, aic3x_extra_snd_controls,
				FUNC0(aic3x_extra_snd_controls));
		FUNC7(component, aic3x_mono_controls,
				FUNC0(aic3x_mono_controls));
		break;
	case AIC3X_MODEL_3007:
		FUNC7(component, aic3x_extra_snd_controls,
				FUNC0(aic3x_extra_snd_controls));
		FUNC7(component,
				&aic3x_classd_amp_gain_ctrl, 1);
		break;
	case AIC3X_MODEL_3104:
		break;
	}

	/* set mic bias voltage */
	switch (aic3x->micbias_vg) {
	case AIC3X_MICBIAS_2_0V:
	case AIC3X_MICBIAS_2_5V:
	case AIC3X_MICBIAS_AVDDV:
		FUNC9(component, MICBIAS_CTRL,
				    MICBIAS_LEVEL_MASK,
				    (aic3x->micbias_vg) << MICBIAS_LEVEL_SHIFT);
		break;
	case AIC3X_MICBIAS_OFF:
		/*
		 * noting to do. target won't enter here. This is just to avoid
		 * compile time warning "warning: enumeration value
		 * 'AIC3X_MICBIAS_OFF' not handled in switch"
		 */
		break;
	}

	FUNC1(component);

	return 0;
}
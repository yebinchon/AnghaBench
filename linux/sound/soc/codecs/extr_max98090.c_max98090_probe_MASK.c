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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98090_priv {unsigned int sysclk; unsigned int pclk; int master; int devtype; int /*<<< orphan*/  pll_work; int /*<<< orphan*/  pll_det_disable_work; int /*<<< orphan*/  pll_det_enable_work; int /*<<< orphan*/  jack_work; int /*<<< orphan*/  jack_state; scalar_t__ pa2en; scalar_t__ pa1en; scalar_t__ lin_state; struct max98090_cdata* dai; struct snd_soc_component* component; int /*<<< orphan*/  mclk; } ;
struct max98090_cdata {unsigned int rate; unsigned int fmt; } ;
typedef  enum max98090_type { ____Placeholder_max98090_type } max98090_type ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M98090_ADCHP_MASK ; 
 int M98090_ADCHP_SHIFT ; 
 int /*<<< orphan*/  M98090_DACHP_MASK ; 
 int M98090_DACHP_SHIFT ; 
 int /*<<< orphan*/  M98090_JACK_STATE_NO_HEADSET ; 
 int M98090_JDEB_25MS ; 
 int M98090_JDETEN_MASK ; 
 unsigned int M98090_MBVSEL_2V8 ; 
 int /*<<< orphan*/  M98090_MBVSEL_MASK ; 
 int /*<<< orphan*/  M98090_PERFMODE_MASK ; 
 unsigned int M98090_PERFMODE_SHIFT ; 
 int /*<<< orphan*/  M98090_REG_ADC_CONTROL ; 
 int /*<<< orphan*/  M98090_REG_BIAS_CONTROL ; 
 int /*<<< orphan*/  M98090_REG_DAC_CONTROL ; 
 int /*<<< orphan*/  M98090_REG_DEVICE_STATUS ; 
 int /*<<< orphan*/  M98090_REG_JACK_DETECT ; 
 int /*<<< orphan*/  M98090_REG_MIC_BIAS_VOLTAGE ; 
 int /*<<< orphan*/  M98090_REG_REVISION_ID ; 
 int M98090_REVA ; 
 int M98090_VCM_MODE_MASK ; 
 int M98091_REVA ; 
 int MAX98090 ; 
 int MAX98091 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  max98090_jack_work ; 
 int /*<<< orphan*/  max98090_pll_det_disable_work ; 
 int /*<<< orphan*/  max98090_pll_det_enable_work ; 
 int /*<<< orphan*/  max98090_pll_work ; 
 int /*<<< orphan*/  FUNC10 (struct max98090_priv*) ; 
 struct max98090_priv* FUNC11 (struct snd_soc_component*) ; 
 int FUNC12 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct snd_soc_component *component)
{
	struct max98090_priv *max98090 = FUNC11(component);
	struct max98090_cdata *cdata;
	enum max98090_type devtype;
	int ret = 0;
	int err;
	unsigned int micbias;

	FUNC3(component->dev, "max98090_probe\n");

	max98090->mclk = FUNC8(component->dev, "mclk");
	if (FUNC2(max98090->mclk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	max98090->component = component;

	/* Reset the codec, the DSP core, and disable all interrupts */
	FUNC10(max98090);

	/* Initialize private data */

	max98090->sysclk = (unsigned)-1;
	max98090->pclk = (unsigned)-1;
	max98090->master = false;

	cdata = &max98090->dai[0];
	cdata->rate = (unsigned)-1;
	cdata->fmt  = (unsigned)-1;

	max98090->lin_state = 0;
	max98090->pa1en = 0;
	max98090->pa2en = 0;

	ret = FUNC12(component, M98090_REG_REVISION_ID);
	if (ret < 0) {
		FUNC4(component->dev, "Failed to read device revision: %d\n",
			ret);
		goto err_access;
	}

	if ((ret >= M98090_REVA) && (ret <= M98090_REVA + 0x0f)) {
		devtype = MAX98090;
		FUNC5(component->dev, "MAX98090 REVID=0x%02x\n", ret);
	} else if ((ret >= M98091_REVA) && (ret <= M98091_REVA + 0x0f)) {
		devtype = MAX98091;
		FUNC5(component->dev, "MAX98091 REVID=0x%02x\n", ret);
	} else {
		devtype = MAX98090;
		FUNC4(component->dev, "Unrecognized revision 0x%02x\n", ret);
	}

	if (max98090->devtype != devtype) {
		FUNC6(component->dev, "Mismatch in DT specified CODEC type.\n");
		max98090->devtype = devtype;
	}

	max98090->jack_state = M98090_JACK_STATE_NO_HEADSET;

	FUNC0(&max98090->jack_work, max98090_jack_work);
	FUNC0(&max98090->pll_det_enable_work,
			  max98090_pll_det_enable_work);
	FUNC1(&max98090->pll_det_disable_work,
		  max98090_pll_det_disable_work);
	FUNC1(&max98090->pll_work, max98090_pll_work);

	/* Enable jack detection */
	FUNC14(component, M98090_REG_JACK_DETECT,
		M98090_JDETEN_MASK | M98090_JDEB_25MS);

	/*
	 * Clear any old interrupts.
	 * An old interrupt ocurring prior to installing the ISR
	 * can keep a new interrupt from generating a trigger.
	 */
	FUNC12(component, M98090_REG_DEVICE_STATUS);

	/* High Performance is default */
	FUNC13(component, M98090_REG_DAC_CONTROL,
		M98090_DACHP_MASK,
		1 << M98090_DACHP_SHIFT);
	FUNC13(component, M98090_REG_DAC_CONTROL,
		M98090_PERFMODE_MASK,
		0 << M98090_PERFMODE_SHIFT);
	FUNC13(component, M98090_REG_ADC_CONTROL,
		M98090_ADCHP_MASK,
		1 << M98090_ADCHP_SHIFT);

	/* Turn on VCM bandgap reference */
	FUNC14(component, M98090_REG_BIAS_CONTROL,
		M98090_VCM_MODE_MASK);

	err = FUNC7(component->dev, "maxim,micbias", &micbias);
	if (err) {
		micbias = M98090_MBVSEL_2V8;
		FUNC5(component->dev, "use default 2.8v micbias\n");
	} else if (micbias > M98090_MBVSEL_2V8) {
		FUNC4(component->dev, "micbias out of range 0x%x\n", micbias);
		micbias = M98090_MBVSEL_2V8;
	}

	FUNC13(component, M98090_REG_MIC_BIAS_VOLTAGE,
		M98090_MBVSEL_MASK, micbias);

	FUNC9(component);

err_access:
	return ret;
}